import 'package:flutter/material.dart';
import 'package:ui/utils/color.dart';

class FileDetail extends StatelessWidget {
  const FileDetail({
    super.key,
    required this.emailData,
  });

  final Map<String, dynamic> emailData;

  @override
  Widget build(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;
    return Row(
      children: [
        const Expanded(
          flex: 1,
          child: SizedBox(),
        ),
        const SizedBox(
          width: 12,
        ),
        if (emailData['isFileAttached'] == true)
          Flexible(
            flex: 10,
            child: OutlinedButton.icon(
              onPressed: () {},
              icon: Image.asset(
                emailData['file'][0]['file_icon'],
                color: secondaryColor,
              ),
              label: Text(
                emailData['file'][0]['file_name'],
                style: theme.labelSmall!.copyWith(
                  fontSize: 12,
                ),
              ),
            ),
          )
        else
          const SizedBox()
      ],
    );
  }
}
