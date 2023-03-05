import 'package:flutter/material.dart';
import 'package:ui/screens/notification/all_tab_bar_view/all_tab_bar_view_body.dart';

import 'package:ui/screens/notification/notification_app_bar_custom.dart';
import 'package:ui/viewModel/notification_data.dart';
import 'package:ui/screens/notification/notification_tab_custom.dart';
import 'package:ui/utils/color.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 6);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  int selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: whiteColor,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(64),
        child: NotificationAppBarCustom(),
      ),
      body: SafeArea(
        child: Column(
          children: [
            TabBar(
              padding: const EdgeInsets.only(
                top: 0,
                bottom: 0,
                left: 0,
                right: 12,
              ),
              isScrollable: true,
              controller: _tabController,
              indicatorColor: Colors.transparent,
              labelColor: labelColor,
              unselectedLabelColor: teritaryColor,
              labelPadding: const EdgeInsets.only(left: 12),
              onTap: (_) {
                setState(() {
                  selectedTabIndex = _tabController.index;
                });
              },
              tabs: [
                NotificationTabCustom(
                  selectedTabIndex: selectedTabIndex,
                  tabIndex: 0,
                  title: 'All',
                ),
                NotificationTabCustom(
                  selectedTabIndex: selectedTabIndex,
                  tabIndex: 1,
                  title: 'Invites',
                ),
                NotificationTabCustom(
                  selectedTabIndex: selectedTabIndex,
                  tabIndex: 2,
                  title: 'Mentions',
                ),
                NotificationTabCustom(
                  selectedTabIndex: selectedTabIndex,
                  tabIndex: 3,
                  title: 'Workspace',
                ),
                NotificationTabCustom(
                  selectedTabIndex: selectedTabIndex,
                  tabIndex: 4,
                  title: 'Emails',
                ),
                NotificationTabCustom(
                  selectedTabIndex: selectedTabIndex,
                  tabIndex: 5,
                  title: 'Unknown',
                ),
              ],
            ),
            Flexible(
              child: TabBarView(
                controller: _tabController,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  AllTabBarView(),
                  Text('Invites'),
                  Text('Mentions'),
                  Text('Workspace'),
                  Text('Email'),
                  Text('Unknown'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
