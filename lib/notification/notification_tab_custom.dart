import 'package:flutter/material.dart';
import 'package:ui/utils/color.dart';

class NotificationTabCustom extends StatelessWidget {
  const NotificationTabCustom({
    super.key,
    required this.selectedTabIndex,
    required this.title,
    required this.tabIndex,
  });

  final int selectedTabIndex;
  final String title;
  final int tabIndex;

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Container(
        height: 24,
        padding: const EdgeInsets.symmetric(
          vertical: 2,
          horizontal: 10,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(36),
          color: tabIndex == selectedTabIndex ? tabBgColor : gray100,
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}