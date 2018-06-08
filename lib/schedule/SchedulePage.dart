import 'package:flutter/material.dart';
import 'package:iheart_festival/common/CustomTab.dart';
import 'package:iheart_festival/schedule/FlexibleScheduleHeader.dart';
import 'package:iheart_festival/schedule/ScheduleViewModel.dart';
import 'package:iheart_festival/schedule/tabs/TabPage.dart';

class SchedulePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _SchedulePageState();

}

class TabData {
  final String label;
  final Color color;
  int index;

  TabData(this.label, this.index, this.color);

}

class _SchedulePageState extends State<SchedulePage> with SingleTickerProviderStateMixin {

  TabController _tabController;
  ScrollController _scrollViewController;
  ScheduleViewModel modelOne;
  ScheduleViewModel modelTwo;
  ScheduleViewModel modelThree;

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

    modelOne = new ScheduleViewModel(MOCK_DATA_FRI);
    modelTwo = new ScheduleViewModel(MOCK_DATA_SAT_AM);
    modelThree = new ScheduleViewModel(MOCK_DATA_SAT_PM);
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

  String _getStateBackground() {
    if (_tabController.index == 1) {
      return "daytime_stage-logo.png";
    } else {
      return "MusicFest-logo.png";
    }
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
                flexibleSpace: FlexibleScheduleHeader(_getStateBackground()),
                forceElevated: boxIsScrolled,
                bottom: CustomTab(tabs, _tabController),
              )
            ];
          },

          body: TabBarView(
              children: [
                Container(
                  color: Colors.white,
                  child: TabPage(modelOne)
                ),
                Container(
                  color: Colors.white,
                    child: TabPage(modelTwo)),
                Container(
                  color: Colors.white,
                  child: TabPage(modelThree))
              ],
              controller: _tabController,
          ),
      ),
    );
  }
}