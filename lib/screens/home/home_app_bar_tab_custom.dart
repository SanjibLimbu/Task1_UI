import 'package:flutter/material.dart';
import 'package:ui/utils/color.dart';

class TabCustom extends StatelessWidget {
  const TabCustom({
    required this.iconTab,
    required this.title,
    this.isChat = false,
    super.key,
  });

  final String iconTab;
  final String title;
  final bool isChat;

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Row(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              ImageIcon(
                AssetImage(iconTab),
              ),

              //check if chat then show badge
              isChat
                  ? Positioned(
                      top: -5,
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
                  : const SizedBox(),
            ],
          ),
          const SizedBox(
            width: 10.1,
          ),
          Text(title)
        ],
      ),
    );
  }
}