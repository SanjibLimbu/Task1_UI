
import 'package:flutter/material.dart';
import 'package:ui/utils/color.dart';

class SettingRow extends StatelessWidget {
  const SettingRow({
    this.isSetstatus = false,
    this.isTrailingTitle = false,
    this.trailingTitle = '',
    this.isTrailingIcon = false,
    this.trailingIcon = '',
    required this.leadingIcon,
    required this.leadingTitle,
    super.key,
  });
  final bool isSetstatus;
  final bool isTrailingTitle;
  final String trailingTitle;
  final bool isTrailingIcon;
  final String trailingIcon;
  final String leadingIcon;
  final String leadingTitle;

  @override
  Widget build(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          leadingIcon,
        ),
        const SizedBox(
          width: 8.83,
        ),
        Text(
          leadingTitle,
          style: theme.bodySmall!.copyWith(
            fontSize: 14,
            color: secondaryColor,
          ),
        ),
        const Spacer(),
        isSetstatus
            ? Image.asset(
                'assets/images/active_icon.png',
                height: 4,
                width: 4,
              )
            : const SizedBox(),
        const SizedBox(
          width: 6,
        ),
        isTrailingTitle
            ? Text(
                trailingTitle,
                style: theme.bodySmall!.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: secondaryColor,
                ),
              )
            : const SizedBox(),
        const SizedBox(
          width: 8,
        ),
        isTrailingIcon
            ? const RotatedBox(
                quarterTurns: 3,
                child: Icon(
                  Icons.expand_more,
                  color: teritaryColor,
                ),
              )
            : const SizedBox()
      ],
    );
  }
}