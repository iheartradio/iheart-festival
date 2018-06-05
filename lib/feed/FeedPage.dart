import 'package:flutter/material.dart';
import 'package:iheart_festival/feed/FeedFilter.dart';
import 'package:iheart_festival/feed/SearchBar.dart';


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
          FeedFilter(),
          new Expanded(child: Placeholder())
        ],
      ),
    );
  }

}