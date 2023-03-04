import 'package:flutter/material.dart';
import 'package:ui/screens/home/project_tools_tab_bar_view/member_icon.dart';

class ProjectMembers extends StatelessWidget {
  const ProjectMembers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Image.asset(
          'assets/images/member_1.png',
          height: 32,
          width: 32,
          fit: BoxFit.cover,
        ),
        const MemberProfileIcon(
          positionFromLeft: 22,
          profileIcon: 'assets/images/member_2.png',
        ),
        const MemberProfileIcon(
          positionFromLeft: 44,
          profileIcon: 'assets/images/member_3.png',
        ),
       const MemberProfileIcon(
          positionFromLeft: 66,
          profileIcon: 'assets/images/member_4.png',
        ),
       const MemberProfileIcon(
          positionFromLeft: 88,
          profileIcon: 'assets/images/member_5.png',
        ),
        
      ],
    );
  }
}
