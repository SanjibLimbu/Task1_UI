import 'package:flutter/material.dart';
import 'package:ui/utils/color.dart';

class FloatingActionButtonCustom extends StatelessWidget {
  const FloatingActionButtonCustom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;
    return SizedBox(
      height: 56,
      child: FloatingActionButton.extended(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        backgroundColor: softGreenColor,
        foregroundColor: secondaryColor,
        elevation: 0,
        label: Text(
          'Compress New Email',
          style: theme.titleSmall!.copyWith(
            color: secondaryColor,
          ),
        ),
        onPressed: () {},
        icon: Image.asset(
          'assets/images/pen_icon.png',
          height: 18,
          width: 18,
        ),
      ),
    );
  }
}
