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

class _FeedPageState extends State<FeedPage> with SingleTickerProviderStateMixin {
  FeedViewModel model;

  Animation<Offset> filterAnimation1;
  Animation<Offset> filterAnimation2;
  Animation<Offset> filterAnimation3;
  AnimationController animationController;

  @override
  void initState() {
    model = FeedViewModel();

    animationController = AnimationController(
      duration: Duration(milliseconds: 900),
      vsync: this
    );

    final Animation<double> easeSelection1 = new CurvedAnimation(
      parent: animationController,
      curve: Interval(0.0, 0.8, curve: Curves.fastOutSlowIn),
    );

    final Animation<double> easeSelection2 = new CurvedAnimation(
      parent: animationController,
      curve: Interval(0.1, 0.9, curve: Curves.fastOutSlowIn),
    );

    final Animation<double> easeSelection3 = new CurvedAnimation(
      parent: animationController,
      curve: Interval(0.2, 1.0, curve: Curves.fastOutSlowIn),
    );

    filterAnimation1 = Tween<Offset>(
      begin: Offset(0.0, -3.0),
      end: Offset(0.0, 0.0)).animate(easeSelection1);

    filterAnimation2 = Tween<Offset>(
        begin: Offset(0.0, -3.0),
        end: Offset(0.0, 0.0)).animate(easeSelection2);

    filterAnimation3 = Tween<Offset>(
        begin: Offset(0.0, -3.0),
        end: Offset(0.0, 0.0)).animate(easeSelection3);

    animationController.forward();

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
            SlideTransition(
              position: filterAnimation1,
              child: FeedFilterItem("#iHeartFestival", Color(0xFFF4AC66))
            ),
            SlideTransition(
              position: filterAnimation2,
              child: FeedFilterItem("#iHeartDayStage", Color(0xFFF54EA2))
            ),
            SlideTransition(
              position: filterAnimation3,
              child: FeedFilterItem("#iHeartRadio", Color(0xFFFF7676))
            ),
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
