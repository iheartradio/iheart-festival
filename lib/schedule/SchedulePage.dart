import 'package:flutter/material.dart';
import 'package:iheart_festival/schedule/ScheduleHeader.dart';
import 'package:iheart_festival/schedule/ScheduleViewModel.dart';
import 'package:iheart_festival/schedule/tabs/TabPage.dart';

class SchedulePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _SchedulePageState();

}

class _SchedulePageState extends State<SchedulePage> with SingleTickerProviderStateMixin {

  TabController _tabController;
  ScrollController _scrollViewController;
  ScheduleViewModel model;

  bool selected = false;

  final List<TabData> tabs = <TabData>[
    TabData("Friday", 0, const Color(0xFFFF7676)),
    TabData("Saturday AM", 1, const Color(0xFFFF7676)),
    TabData("Saturday PM", 2, const Color(0xFFFF7676)),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(_handleTabSelection);
    _scrollViewController = ScrollController(initialScrollOffset: 0.0);
    model = new ScheduleViewModel();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
    _scrollViewController.dispose();
  }

  void _handleTabSelection() {
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          controller: _scrollViewController,
          headerSliverBuilder: (BuildContext context, bool boxIsScrolled){
            return <Widget>[
              SliverAppBar(
                leading: Container(),
                backgroundColor: Colors.white,
                expandedHeight: 250.0,
                pinned: true,
                floating: true,
                flexibleSpace: ScheduleHeader(),
                forceElevated: boxIsScrolled,
                bottom: TabBar(
                  tabs: tabs.map((t) {
                    Color color = t.index == _tabController.index ? const Color(0xFFFF7676) : Colors.black;
                    return Tab(
                      child: Text(t.label.toUpperCase(), style: TextStyle(color: color)),
                    );
                  }).toList(),
                controller: _tabController,
                ),
              )
            ];
          },
          body: TabBarView(
              children: [
                TabPage(model.items),
                TabPage(model.items_sat_am),
                TabPage(model.items_sat_pm)
              ],
              controller: _tabController,
          ),
      ),
    );
  }
}

class TabData {
  final String label;
  final Color color;
  int index;

  TabData(this.label, this.index, this.color);

}