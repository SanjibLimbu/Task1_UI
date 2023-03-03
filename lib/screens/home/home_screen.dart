import 'package:flutter/material.dart';

import 'package:ui/screens/home/home_body.dart';
import 'package:ui/utils/color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreenContent(),
    const Text(
      'Index 1: Business',
    ),
    const Text(
      'Index 2: School',
    ),
    const Text(
      'Index 1: Business',
    ),
    const Text(
      'Index 2: School',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),

      //extract bottom nav bar by sending function on tap and index
      bottomNavigationBar: Container(
        height: 78,
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(
              color: gray200,
            ),
          ),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: whiteColor,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
          unselectedLabelStyle: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
          currentIndex: _selectedIndex,
          unselectedItemColor: gray500,
          selectedItemColor: mainColor,
          onTap: _onItemTapped,
          items: <BottomNavigationBarItem>[
            //home nav
            BottomNavigationBarItem(
              icon: _selectedIndex == 0
                  ? const ImageIcon(
                      AssetImage(
                        'assets/images/home_icon_selected.png',
                      ),
                    )
                  : const ImageIcon(
                      AssetImage(
                        'assets/images/home_icon_unselected.png',
                      ),
                    ),
              label: 'Home',
            ),
            const BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  'assets/images/search.png',
                ),
              ),
              label: 'Search',
            ),
            const BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/email.png'),
              ),
              label: 'Email',
            ),
            const BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/notification.png'),
              ),
              label: 'Notification',
            ),
            const BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/profile.png'),
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
