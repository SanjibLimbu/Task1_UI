import 'package:flutter/material.dart';
import 'package:ui/screens/email/email_app_bar_custom.dart';
import 'package:ui/screens/email/email_list.dart';
import 'package:ui/screens/email/floating_button_custom.dart';

import 'package:ui/utils/color.dart';

class EmailScreen extends StatelessWidget {
  const EmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(58),
        child: EmailAppBarCustom(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 16,
              left: 16,
              right: 16,
            ),
            child: Text(
              'All Inbox',
              style: theme.bodySmall!.copyWith(
                color: teritaryColor,
              ),
            ),
          ),
          const EmailList()
        ],
      ),
      floatingActionButton: const FloatingActionButtonCustom(),
    );
  }
}
