import 'package:flutter/material.dart';
import 'package:ui/utils/color.dart';

class Btn extends StatelessWidget {
  const Btn(
      {super.key,
      required this.btnFunctin,
      required this.title,
      required this.bgColor});

  final void Function()? btnFunctin;
  final String title;

  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: btnFunctin,
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
      ),
      child: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .bodySmall!
            .copyWith(fontWeight: FontWeight.w600, color: whiteColor),
      ),
    );
  }
}
