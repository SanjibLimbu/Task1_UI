import 'package:flutter/material.dart';
import 'package:ui/screens/home/home_screen.dart';
import 'package:ui/screens/onBoarding/onBoarding_screen.dart';
import 'package:ui/screens/signin/sign_in_screen.dart';
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
      initialRoute: 'home_screen',
      routes: {
        'splash_screen': (context) => const SplashScreen(),
        'onBoarding_screen': (context) => const OnBoardingScreen(),
        'signin_screen':(context) => const SignInScreen(),
        'home_screen':(context) => const HomeScreen(),
      },
    );
  }
}
