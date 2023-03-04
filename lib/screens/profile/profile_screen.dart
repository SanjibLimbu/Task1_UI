import 'package:flutter/material.dart';
import 'package:ui/screens/profile/account_setting.dart';
import 'package:ui/screens/profile/app_setting.dart';
import 'package:ui/screens/profile/logout_show_modal.dart';
import 'package:ui/screens/profile/more_seeting.dart';
import 'package:ui/screens/profile/profile_body.dart';
import 'package:ui/screens/profile/profile_header.dart';

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
          children: const [
            //header
            ProfileHeader(),
            //body
            ProfileBody()
          ],
        ),
      ),
    );
  }
}
