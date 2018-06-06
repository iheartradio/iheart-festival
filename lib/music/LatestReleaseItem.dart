
import 'package:flutter/material.dart';
import 'package:iheart_festival/music/data/OverviewData.dart';

class LatestReleaseItem extends StatelessWidget {

  final LatestReleaseData data;

  LatestReleaseItem(this.data);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text("Latest Release", style: TextStyle(color: const Color(0xFFFF7676), fontSize: 16.0),),
        ),
        _RecordItemRow(data),
        Divider(color: Colors.grey)
      ],
    );
  }
}

class _RecordItemRow extends StatelessWidget {

  final LatestReleaseData data;

  _RecordItemRow(this.data);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, bottom: 8.0),
      child: Row(
        children: <Widget>[
          Image(
            image: AssetImage(data.image),
            width: 100.0,
            height: 100.0,
            fit: BoxFit.cover,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(data.title),
                  Text(data.description)
                ],
              ),
            ),
          ),
          Image(
            color: Colors.grey,
            width: 25.0,
            image: AssetImage("dots_vertical.png"),
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}