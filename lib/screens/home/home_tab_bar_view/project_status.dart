import 'package:flutter/material.dart';
import 'package:ui/utils/color.dart';

class ProjectStatus extends StatelessWidget {
  const ProjectStatus({
    super.key,
    required this.title,
    required this.status,
  });

  final String title;
  final String status;

  @override
  Widget build(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Text(
            title,
            style: theme.labelSmall!.copyWith(
              fontSize: 14,
              color: teritaryColor,
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          flex: 4,
          child: Text(
            status,
            style: theme.labelSmall!.copyWith(
              fontSize: 14,
            ),
          ),
        )
      ],
    );
  }
}
