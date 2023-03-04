import 'package:flutter/material.dart';
import 'package:ui/screens/profile/profile_header.dart';
import 'package:ui/screens/profile/setting_row.dart';
import 'package:ui/utils/color.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //header
            const ProfileHeader(),
            //body
            SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 32,
                  ),
                  Padding(
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
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
