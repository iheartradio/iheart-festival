import 'package:flutter/material.dart';
import 'package:iheart_festival/schedule/ScheduleData.dart';

class ScheduleListItemSimple extends StatelessWidget {

  final InfoData data;

  ScheduleListItemSimple(this.data);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(data.time, style: Theme.of(context).textTheme.body1.copyWith(color: Colors.red)),
          Text(data.description, style: Theme.of(context).textTheme.title)
        ],
      ),
    );
  }
}