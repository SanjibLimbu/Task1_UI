import 'package:flutter/material.dart';
import 'package:ui/utils/color.dart';

class NotificationAppBarCustom extends StatelessWidget {
  const NotificationAppBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;
    return AppBar(
      backgroundColor: whiteColor,
      toolbarHeight: 64,
      elevation: 0,
      shape: const Border(
        bottom: BorderSide(
          color: gray200,
          width: 1,
        ),
      ),
      leadingWidth: 0,
      title: Text(
        'Notification',
        style: theme.labelMedium!.copyWith(fontSize: 18),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.more_vert_rounded,
            color: secondaryColor,
          ),
        ),
      ],
    );
  }
}
