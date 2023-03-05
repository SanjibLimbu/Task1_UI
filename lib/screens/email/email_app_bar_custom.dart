import 'package:flutter/material.dart';
import 'package:ui/screens/email/search_email_text_field.dart';
import 'package:ui/utils/color.dart';

class EmailAppBarCustom extends StatelessWidget {
  const EmailAppBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: whiteColor,
      toolbarHeight: 58,
      elevation: 0,
      centerTitle: true,
      titleSpacing: 0,
      shape: const Border(
        bottom: BorderSide(
          color: gray200,
          width: 1,
        ),
      ),
      leading: const Icon(
        Icons.menu_rounded,
        color: secondaryColor,
      ),
      title: const SearchEmailWidget(),
      actions: [
        Image.asset('assets/images/email_profile_icon.png')
      ],
    );
  }
}
