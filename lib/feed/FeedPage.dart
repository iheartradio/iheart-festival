import 'package:flutter/material.dart';
import 'package:iheart_festival/feed/FeedFilterItem.dart';
import 'package:iheart_festival/feed/SearchBar.dart';
import 'package:iheart_festival/feed/TwitterItem.dart';


class FeedPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _FeedPageState();

}

class _FeedPageState extends State<FeedPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(height: 24.0,),
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
        )
    );
  }

  Widget _buildFeedList(BuildContext context) {
    return Flexible(

      child: ListView(
        children: <Widget>[
          TwitterItem(),
          TwitterItem(),
        ],
      ),
    );
  }

}