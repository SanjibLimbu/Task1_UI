import 'package:flutter/material.dart';
import 'package:ui/screens/profile/account_setting.dart';
import 'package:ui/screens/profile/app_setting.dart';
import 'package:ui/screens/profile/more_seeting.dart';
import 'package:ui/screens/profile/profile_header.dart';

import 'package:ui/utils/color.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //header
            const ProfileHeader(),
            //body
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 32,
                    ),
                    //account setting
                    const AccountSetting(),

                    const Divider(
                      color: gray200,
                    ),

                    //app setting
                    const AppSetting(),
                    const Divider(
                      color: gray200,
                    ),
                    //more setting
                    const MoreSetting(),

                    //account label
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        'Account',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(color: secondaryColor),
                      ),
                    ),

                    //log out
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 32),
                      child: Row(
                        children: [
                          Image.asset('assets/images/logout_icon.png'),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Logout',
                            style: theme.bodySmall!.copyWith(
                              fontSize: 14,
                              color: errorColor,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
