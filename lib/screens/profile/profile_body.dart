import 'package:flutter/material.dart';
import 'package:ui/screens/profile/account_setting.dart';
import 'package:ui/screens/profile/app_setting.dart';
import 'package:ui/screens/profile/logout_show_modal.dart';
import 'package:ui/screens/profile/more_seeting.dart';
import 'package:ui/utils/color.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 32,
            ),
            //account setting
            const AccountSetting(),

            const Divider(),

            //app setting
            const AppSetting(),
            const Divider(),
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
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
              child: TextButton.icon(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 0,
                    vertical: 0,
                  ),
                ),
                onPressed: () {
                  //show modal after clicking logout
                  logOutShowModal(context);
                },
                icon: const ImageIcon(
                  AssetImage(
                    'assets/images/logout_icon.png',
                  ),
                  color: errorColor,
                ),
                label: Text(
                  'Logout',
                  style: theme.bodySmall!.copyWith(
                    fontSize: 14,
                    color: errorColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
