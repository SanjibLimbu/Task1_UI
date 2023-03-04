import 'package:flutter/material.dart';
import 'package:ui/screens/profile/setting_row.dart';
import 'package:ui/utils/color.dart';

class AppSetting extends StatelessWidget {
  const AppSetting({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 16,
          ),
          Text(
            'App Settings',
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: secondaryColor),
          ),
          const SizedBox(
            height: 28,
          ),
          //notification setting
          const SettingRow(
            leadingIcon: 'assets/images/profile_notification_icon.png',
            leadingTitle: 'Notification',
            isTrailingIcon: true,
          ),
          const SizedBox(
            height: 28,
          ),
          //appearance setting
          const SettingRow(
            leadingIcon: 'assets/images/appearance_icon.png',
            leadingTitle: 'Appearance',
            isTrailingTitle: true,
            trailingTitle: 'Light',
            isTrailingIcon: true,
          ),
          const SizedBox(
            height: 32,
          ),
        ],
      ),
    );
  }
}
