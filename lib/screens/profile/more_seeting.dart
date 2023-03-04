import 'package:flutter/material.dart';
import 'package:ui/screens/profile/setting_row.dart';
import 'package:ui/utils/color.dart';

class MoreSetting extends StatelessWidget {
  const MoreSetting({
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
            'More',
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: secondaryColor),
          ),
          const SizedBox(
            height: 28,
          ),
          //privacy policy setting
          const SettingRow(
            leadingIcon: 'assets/images/privacy_policy_icon.png',
            leadingTitle: 'Privacy Policy',
          ),
          const SizedBox(
            height: 28,
          ),
          //terms and conditions setting
          const SettingRow(
            leadingIcon: 'assets/images/terms_icon.png',
            leadingTitle: 'Terms & Conditions',
          ),
          const SizedBox(
            height: 28,
          ),
          //help and support setting
          const SettingRow(
            leadingIcon: 'assets/images/help_icon.png',
            leadingTitle: 'Help & Support',
            isTrailingIcon: true,
          ),
          const SizedBox(
            height: 28,
          ),
          //FAQs setting
          const SettingRow(
            leadingIcon: 'assets/images/help_icon.png',
            leadingTitle: 'FAQs',
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
