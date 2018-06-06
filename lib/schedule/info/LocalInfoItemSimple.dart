import 'package:flutter/material.dart';
import 'package:iheart_festival/schedule/ScheduleData.dart';

class LocalInfoItemSimple extends StatelessWidget {

  final InfoData data;

  const LocalInfoItemSimple(this.data);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, bottom: 16.0),
      child: Column (
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(data.time, style: TextStyle(color: Colors.red)),
          Padding(
            padding: const EdgeInsets.only(top: 6.0, bottom: 4.0),
            child: Text(data.description),
          )
        ],
      ),
    );
  }
}