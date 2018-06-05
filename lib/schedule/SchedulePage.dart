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
                    tabs: [
                      Tab(
                        child: Text("Friday".toUpperCase(), style: TextStyle(color:  const Color(0xFFFF7676))),
                      ),
                      Tab(
                        child: Text("Saturday AM".toUpperCase(), style: TextStyle(color: const Color(0xFFFF7676))),
                      ),
                      Tab(
                        child: Text("Saturday PM".toUpperCase(), style: TextStyle(color: const Color(0xFFFF7676))),
                      )
                    ],
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


class ScheduleTabController extends TabController {

  final int length;

  ScheduleTabController(this.length);
}