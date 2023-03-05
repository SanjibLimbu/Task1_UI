import 'package:flutter/material.dart';
import 'package:ui/viewModel/notification_data.dart';
import 'package:ui/utils/color.dart';

class AllTabBarView extends StatelessWidget {
  const AllTabBarView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: NotificationData.notificationData.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: gray200,
              ),
            ),
          ),
          child: ListTile(
            visualDensity: const VisualDensity(vertical: -4),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 7,
              horizontal: 16,
            ),
            leading: Image.asset(
              NotificationData.notificationData[index]['icon'],
            ),
            title: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                NotificationData.notificationData[index]['title'],
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: secondaryColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            subtitle: Text(
              NotificationData.notificationData[index]['time'],
              style: const TextStyle(
                color: teritaryColor,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
            trailing: NotificationData.notificationData[index]
                        ['isActive'] ==
                    true
                ? Image.asset('assets/images/active_icon.png')
                : const SizedBox(),
          ),
        );
      },
    );
  }
}
