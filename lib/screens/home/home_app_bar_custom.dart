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
      backgroundColor: whiteColor,
      elevation: 0,
      shape: const Border(
        bottom: BorderSide(
          color: teritaryColor,
          width: 1,
        ),
      ),
      title: Container(
        height: 64,
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/legoIcon.png',
              height: 32,
              width: 32,
              fit: BoxFit.cover,
            ),
            TextButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
            ),
          ],
        ),
      ),
      bottom: TabBar(
        padding: const EdgeInsets.symmetric(vertical: 0),
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
