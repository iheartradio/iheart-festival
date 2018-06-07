import 'package:flutter/material.dart';
import 'package:iheart_festival/common/StatusBar.dart';
import 'package:iheart_festival/feed/FeedFilterItem.dart';
import 'package:iheart_festival/feed/FeedViewModel.dart';
import 'package:iheart_festival/feed/SearchBar.dart';
import 'package:iheart_festival/feed/TwitterItem.dart';

class FeedPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  FeedViewModel model;

  @override
  void initState() {
    model = FeedViewModel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          StatusBar(),
          SearchBar(),
          _buildFilterList(context),
          _buildFeedList(context)
        ],
      ),
    );
  }

  Widget _buildFilterList(BuildContext context) {
    return SizedBox(
        height: 54.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            FeedFilterItem("#iHeartFestival", Color(0xFFF4AC66)),
            FeedFilterItem("#iHeartDayStage", Color(0xFFF54EA2)),
            FeedFilterItem("#iHeartRadio", Color(0xFFFF7676)),
            FeedFilterItem("#dualipa", Color(0xFF17EAD9)),
            FeedFilterItem("#5sos", Color(0xFFF4AC66)),
            FeedFilterItem("#liluzivert", Color(0xFF17EAD9)),
            FeedFilterItem("#bazzi", Color(0xFFF54EA2)),
            FeedFilterItem("#rebellyus", Color(0xFFFF7676)),
          ],
        ));
  }

  Widget _buildFeedList(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        itemCount: model.data.length,
        itemBuilder: (context, index) {
          return TwitterItem(model.data[index]);
        },
      ),
    );
  }
}
