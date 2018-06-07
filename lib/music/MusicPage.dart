
import 'package:flutter/material.dart';
import 'package:iheart_festival/music/MusicPlayer.dart';
import 'package:iheart_festival/music/OverviewViewModel.dart';
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
  OverviewViewModel model;

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
    model = new OverviewViewModel();
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

  Color _getSelectedColor(int index) {
    print(index);
    return index == _tabController.index ? const Color(0xFFFF7676) : Colors.black;
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
                expandedHeight: 250.0,
                backgroundColor: Colors.white,
                pinned: true,
                floating: true,
                flexibleSpace: MusicPlayerPage(),
                forceElevated: isScrolled,
                bottom: TabBar(
                  indicatorColor: const Color(0xFFFF7676),
                  tabs: _tabs.map((tab){
                    return Tab(
                      child: Text(tab.label.toUpperCase(), style: TextStyle(color: _getSelectedColor(tab.index))),
                    );
                  }).toList(),
                  controller: _tabController,
                ),
              )
            ];
          }, body: TabBarView(
        children: [
          OverviewPageTab(model.items),
          RelatedPageTab(),
          AboutPageTab(model.aboutItems),
        ],
        controller: _tabController,
      )
      ),
    );
  }
}