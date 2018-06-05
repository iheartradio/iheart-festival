import 'package:flutter/material.dart';
import 'package:iheart_festival/schedule/ListItem.dart';
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
  List<ListItem> data;

  @override
  void initState() {
    super.initState();
    data = ScheduleViewModel().items;
    _tabController = TabController(length: 3, vsync: this);
    _scrollViewController = ScrollController(initialScrollOffset: 0.0);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
    _scrollViewController.dispose();
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
                TabPage(data),
                Placeholder(),
                Placeholder()
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