import 'package:flutter/material.dart';
import 'package:ui/utils/color.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;

    return Container(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
      ),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: gray200,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 22,
          ),
          Text(
            'Profile',
            style: theme.labelMedium!.copyWith(
              fontSize: 18,
            ),
          ),
          ListTile(
            contentPadding: const EdgeInsets.only(
              left: 0,
              top: 6,
            ),
            leading: Stack(
              clipBehavior: Clip.none,
              children: [
                Image.asset(
                  'assets/images/profile_icon.png',
                  height: 48,
                  width: 48,
                  fit: BoxFit.fill,
                ),
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: Image.asset(
                      'assets/images/profile_active_icon.png',
                      height: 12,
                      width: 12,
                      fit: BoxFit.fill,
                    ))
              ],
            ),
            title: const Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Text(
                'Jane Copper',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: secondaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            subtitle: const Text(
              'janecopper@gmail.com',
              style: TextStyle(
                color: teritaryColor,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
