import 'package:flutter/material.dart';
import 'package:ui/utils/color.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  fontFamily: 'Urbanist',
  scaffoldBackgroundColor: mainBgColor,

  //text style
  textTheme: const TextTheme(
    labelLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: secondaryColor,
    ),
    bodySmall: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: textSecondary,
    ),
  ),
  //text style end
);
