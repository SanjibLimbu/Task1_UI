import 'package:flutter/material.dart';
import 'package:ui/screens/onBoarding/onBoarding_screen.dart';
import 'package:ui/screens/splash_screen.dart';
import 'package:ui/theme/theme_constant.dart';

void main() {
  runApp(const TaskUI());
}

class TaskUI extends StatelessWidget {
  const TaskUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      initialRoute: 'splash_screen',
      routes: {
        'splash_screen': (context) => const SplashScreen(),
        'onBoarding_screen': (context) => const OnBoardingScreen(),
      },
    );
  }
}
