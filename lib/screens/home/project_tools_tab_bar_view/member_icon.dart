import 'package:flutter/material.dart';

class MemberProfileIcon extends StatelessWidget {
  const MemberProfileIcon({
    required this.positionFromLeft,
    required this.profileIcon,
    super.key,
  });
  final double? positionFromLeft;
  final String profileIcon;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: positionFromLeft,
      child: Image.asset(
        profileIcon,
        height: 32,
        width: 32,
        fit: BoxFit.cover,
      ),
    );
  }
}