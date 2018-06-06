import 'package:flutter/material.dart';
import 'package:iheart_festival/schedule/FlexibleScheduleHeader.dart';
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

  final List<TabData> tabs = <TabData>[
    TabData("Friday", 0, Colors.black),
    TabData("Saturday AM", 1, Colors.black),
    TabData("Saturday PM", 2, Colors.black),
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

  Color _getColor(int index) {
    return index == _tabController.index ? const Color(0xFFFF7676) : Colors.black;
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
                flexibleSpace: FlexibleScheduleHeader(),
                forceElevated: boxIsScrolled,

                bottom: TabBar(
                  indicatorColor: const Color(0xFFFF7676),
                  tabs: tabs.map((tab) {
                    return Tab(
                      child: Container(
                        height: 50.0,
                        width: 150.0,
                        color: Colors.white,
                          child: Center(child: Text(tab.label.toUpperCase(), style: TextStyle(color: _getColor(tab.index))))
                      ),
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