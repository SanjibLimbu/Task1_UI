import 'package:flutter/material.dart';
import 'package:ui/screens/email/email_screen.dart';
import 'package:ui/screens/notification/notification_screen.dart';
import 'package:ui/screens/home/home_body.dart';
import 'package:ui/screens/profile/profile_screen.dart';
import 'package:ui/screens/widget/bottom_nav_bar_custom.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreenContent(),
    const SafeArea(
      child: Text(
        ' Search',
      ),
    ),
    const EmailScreen(),
    const NotificationScreen(),
    const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),

      //extract bottom nav bar by sending function on tap and index
      bottomNavigationBar: BottomNavBarCustom(
        selectedIndex: _selectedIndex,
        onItemTapped: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
