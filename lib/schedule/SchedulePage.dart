import 'package:flutter/material.dart';
import 'package:iheart_festival/schedule/ScheduleData.dart';
import 'package:iheart_festival/schedule/schedule_list_item.dart';

class SchedulePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _SchedulePageState();

}

class _SchedulePageState extends State<SchedulePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 250.0,
            floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("TITLE APP BAR"),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) => ListTile(
              title: Text("List item $index"),
            )),
          )
        ],
      ),
    );

}


ArtistScheduleData data = ArtistScheduleData(
    "11AM",
    "Dua Lipa",
    "Pop, Synth Pop",
    "https://cps-static.rovicorp.com/3/JPG_400/MI0004/057/MI0004057529.jpg?partner=allrovi.com",
    true
);



/*
return Scaffold(
//      body: CustomScrollView(
//        slivers: <Widget>[
//          SliverAppBar(
//            pinned: true,
//            expandedHeight: 250.0,
//            flexibleSpace: FlexibleSpaceBar(
//              title: Text("Title"),
//              //background: ,
//            ),
//          ),
//
//          SliverPadding(
//            padding: EdgeInsets.all(16.0),
//            sliver: SliverList(
//              delegate: SliverChildListDelegate([
//                Text("other title"),
//                Text("body"),
//                Text("other info"),
//              ]),
//            ),
//          )
//        ],
//      ),
//    );


 */