import 'package:flutter/material.dart';
import 'package:ui/widget/home_app_bar_custom.dart';
import 'package:ui/screens/home/home_tab_bar_view/home_tab_bar_view_body.dart';
import 'package:ui/utils/color.dart';

class HomeScreenContent extends StatefulWidget {
  const HomeScreenContent({super.key});

  @override
  State<HomeScreenContent> createState() => _HomeScreenContentState();
}

class _HomeScreenContentState extends State<HomeScreenContent> with TickerProviderStateMixin{
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
    double safeAreaHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(safeAreaHeight + 100),
        child: HomeAppBar(tabController: _tabController),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          HomeTabBarView(),
          LinearProgressIndicator(
            value: 0.7,
            minHeight: 7,
            color: Colors.greenAccent,
            backgroundColor: Colors.grey,
          ),
          Text('hello3'),
          Text('hello4'),
        ],
      ),
    );
  }
}
