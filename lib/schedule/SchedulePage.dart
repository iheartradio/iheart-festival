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
    return new Scaffold(
      body: ListView(
        children: [

        ],
      ),
    );
  }

}


ArtistScheduleData data = ArtistScheduleData(
    "11AM",
    "Dua Lipa",
    "Pop, Synth Pop",
    "https://cps-static.rovicorp.com/3/JPG_400/MI0004/057/MI0004057529.jpg?partner=allrovi.com",
    true
);