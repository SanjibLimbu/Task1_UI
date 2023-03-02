import 'package:flutter/material.dart';
import 'package:ui/utils/color.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  fontFamily: 'Urbanist',
  scaffoldBackgroundColor: mainBgColor,

  //eleavated button
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          minimumSize:
              MaterialStateProperty.all(const Size(double.infinity, 48)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
          ))),

  //text style
  textTheme: const TextTheme(
    labelLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: secondaryColor,
    ),
    labelMedium: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: secondaryColor,
    ),
    labelSmall: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: secondaryColor,
      
    ),
    titleMedium: TextStyle(
      fontSize: 18,
      
      fontWeight: FontWeight.w600,
      color: whiteColor,
     
    ),
    bodySmall: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: textSecondary,
    ),
  ),
  //text style end
);
