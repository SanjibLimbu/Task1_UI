import 'package:flutter/material.dart';
import 'package:ui/utils/color.dart';

class BottomNavBarCustom extends StatelessWidget {
  const BottomNavBarCustom({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  final int selectedIndex;
  final void Function(int)? onItemTapped;

  @override
  Widget build(BuildContext context) {
    return Container(
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
        selectedLabelStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
        currentIndex: selectedIndex,
        unselectedItemColor: gray500,
        selectedItemColor: mainColor,
        onTap: onItemTapped,
        items: <BottomNavigationBarItem>[
          //home nav
          BottomNavigationBarItem(
            //if home selected then show selected icon of home else not selected
            icon: selectedIndex == 0
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
          //search nav
          const BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(
                'assets/images/search.png',
              ),
            ),
            label: 'Search',
          ),
          //email nav

          BottomNavigationBarItem(
            icon: Stack(
              clipBehavior: Clip.none,
              children: [
                const ImageIcon(
                  AssetImage(
                    'assets/images/email.png',
                  ),
                ),
                Positioned(
                  top: -3,
                  right: -5,
                  child: Container(
                    width: 16,
                    height: 16,
                    decoration: const BoxDecoration(
                      color: mainColor,
                      shape: BoxShape.circle,
                    ),
                    child: const Center(
                      child: Text(
                        '3',
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            color: whiteColor),
                      ),
                    ),
                  ),
                )
              ],
            ),
            label: 'Email',
          ),
          //notification nav
          const BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(
                'assets/images/notification.png',
              ),
            ),
            label: 'Notification',
          ),
          //profile nav
          const BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(
                'assets/images/profile.png',
              ),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
