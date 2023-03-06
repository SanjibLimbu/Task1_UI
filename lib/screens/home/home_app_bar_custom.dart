import 'package:flutter/material.dart';
import 'package:ui/screens/home/home_app_bar_tab_custom.dart';
import 'package:ui/utils/color.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;
    return AppBar(
      toolbarHeight: 64,
      backgroundColor: whiteColor,
      elevation: 0,
      shape: const Border(
        bottom: BorderSide(
          color: teritaryColor,
          width: 1,
        ),
      ),
      leadingWidth: 0,
      title: Container(
        height: 64,
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
        child: TextButton.icon(
          onPressed: () {},
          
          style: TextButton.styleFrom(
            
          
          
            padding: const EdgeInsets.only(
              left: 0,
              bottom: 11,
            ),
          ),
          label: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Lancemeup',
                style: theme.labelMedium!.copyWith(
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              const Icon(
                Icons.expand_more,
                color: secondaryColor,
              )
            ],
          ),
          icon: Image.asset(
            'assets/images/legoIcon.png',
            height: 32,
            width: 32,
          ),
        ),
      ),
      bottom: TabBar(
    
        isScrollable: true,
        indicatorColor: mainColor,
        indicatorWeight: 2,
        controller: _tabController,
        labelColor: mainColor,
        unselectedLabelColor: teritaryColor,
        tabs: const [
          TabCustom(
            iconTab: 'assets/images/work.png',
            title: 'Project Tools',
          ),
          TabCustom(
            iconTab: 'assets/images/chat.png',
            title: 'Chat',
            isChat: true,
          ),
          TabCustom(
            iconTab: 'assets/images/folder.png',
            title: 'Drive',
          ),
          TabCustom(
            iconTab: 'assets/images/time.png',
            title: 'Tracker',
          ),
        ],
      ),
    );
  }
}
