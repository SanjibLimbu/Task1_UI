import 'package:flutter/material.dart';
import 'package:ui/screens/profile/setting_row.dart';

class AccountSetting extends StatelessWidget {
  const AccountSetting({
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
        children: const [
          //set status
          SettingRow(
            leadingIcon: 'assets/images/set_status_icon.png',
            leadingTitle: 'Set status',
            isSetstatus: true,
            isTrailingIcon: true,
            isTrailingTitle: true,
            trailingTitle: 'Online',
          ),
          SizedBox(
            height: 28,
          ),
          //account
          SettingRow(
            leadingIcon: 'assets/images/account_icon.png',
            leadingTitle: 'Account',
            isTrailingIcon: true,
          ),
          SizedBox(
            height: 28,
          ),
          //activity
          SettingRow(
            leadingIcon: 'assets/images/activity_icon.png',
            leadingTitle: 'Activity',
            isTrailingIcon: true,
          ),
          SizedBox(
            height: 28,
          ),
          //connections
          SettingRow(
            leadingIcon: 'assets/images/connections_icon.png',
            leadingTitle: 'Connections',
            isTrailingIcon: true,
          ),
          SizedBox(
            height: 32,
          ),
        ],
      ),
    );
  }
}
