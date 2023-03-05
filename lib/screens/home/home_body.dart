import 'package:flutter/material.dart';
import 'package:ui/screens/home/home_app_bar_custom.dart';

import 'package:ui/utils/color.dart';

import 'project_tools_tab_bar_view/project_tools_tab_bar_view_body.dart';

class HomeScreenContent extends StatefulWidget {
  const HomeScreenContent({super.key});

  @override
  State<HomeScreenContent> createState() => _HomeScreenContentState();
}

class _HomeScreenContentState extends State<HomeScreenContent>
    with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 4);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: HomeAppBar(tabController: _tabController),
      ),
      body: SafeArea(
        child: TabBarView(
          controller: _tabController,
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            ProjectToolsTabBarView(),
            Text('Chat'),
            Text('Drive'),
            Text('Tracker'),
          ],
        ),
      ),
    );
  }
}
