
import 'package:flutter/material.dart';
import 'package:iheart_festival/music/data/AboutData.dart';

class ReadMoreHeader extends StatelessWidget {

  final ReadMoreData data;
  ReadMoreHeader(this.data);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            children: <Widget>[
              Text(data.header, style: TextStyle(color: const Color(0xFFFF7676), fontSize: 14.0),),
              IconButton(
                color: const Color(0xFFFF7676),
                icon: Icon(Icons.keyboard_arrow_down),
                onPressed: () {
                },
              )
            ],
          ),
        ),
        Divider(height: 2.0, color: Colors.grey)
      ],
    );
  }
}