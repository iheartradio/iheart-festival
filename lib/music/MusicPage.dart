
import 'package:flutter/material.dart';
import 'package:iheart_festival/common/CustomTab.dart';
import 'package:iheart_festival/music/MusicPlayer.dart';
import 'package:iheart_festival/music/MusicViewModel.dart';
import 'package:iheart_festival/music/tabs/AboutPageTab.dart';
import 'package:iheart_festival/music/tabs/OverviewPageTab.dart';
import 'package:iheart_festival/music/tabs/RelatedPageTab.dart';
import 'package:iheart_festival/schedule/SchedulePage.dart';

class MusicPage extends StatefulWidget {
  @override
  _MusicPageState createState() => new _MusicPageState();
}

class _MusicPageState extends State<MusicPage> with SingleTickerProviderStateMixin {

  TabController _tabController;
  ScrollController _scrollController;
  MusicViewModel model;

  final List<TabData> _tabs = <TabData>[
    TabData("Overview", 0, Colors.black),
    TabData("About", 1, Colors.black),
    TabData("Related", 2, Colors.black),
  ];

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(_handleSelection);
    _scrollController = ScrollController(initialScrollOffset: 0.0);
    model = new MusicViewModel();
    super.initState();
  }

  void _handleSelection() {
    setState(() {

    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: Container(),
        title: Text("iHeartRadio Festival Artists"),
      ),
      body: NestedScrollView(
        controller: _scrollController,
          headerSliverBuilder: (BuildContext context, bool isScrolled){
            return <Widget>[
              SliverAppBar(
                leading: Container(),
                expandedHeight: 420.0,
                backgroundColor: Colors.white,
                pinned: true,
                floating: true,
                flexibleSpace: MusicPlayerPage(),
                forceElevated: isScrolled,
                bottom: CustomTab(_tabs, _tabController),
              )
            ];
          }, body: TabBarView(
        children: [
          Container(
            color: Colors.white,
              child: OverviewPageTab(model.items)
          ),
          Container(
              color: Colors.white,
              child: AboutPageTab(model.aboutItems)
          ),
          RelatedPageTab()
        ],
        controller: _tabController,
      )
      ),
    );
  }
}