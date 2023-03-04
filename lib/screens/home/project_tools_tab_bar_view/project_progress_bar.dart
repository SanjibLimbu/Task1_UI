import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:ui/utils/color.dart';

class ProjectProgressBar extends StatelessWidget {
  const ProjectProgressBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: LinearPercentIndicator(
            padding: const EdgeInsets.only(
              left: 0,
              right: 8,
            ),
            lineHeight: 7,
            percent: 0.4,
            barRadius: const Radius.circular(32),
            progressColor: mainColor,
            backgroundColor: gray200,
            trailing: const Text(
              '40%',
              style: TextStyle(
                color: mainColor,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    );
  }
}