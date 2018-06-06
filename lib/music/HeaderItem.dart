import 'package:flutter/material.dart';
import 'package:iheart_festival/music/data/OverviewData.dart';

class HeaderItem extends StatelessWidget {

  final SongsHeaderData data;

  HeaderItem(this.data);

  TextStyle _getStyle() {
    return TextStyle(color: const Color(0xFFFF7676), fontSize: 16.0);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Expanded(child: Text(data.header, style: _getStyle(),)),
          Text(data.action, style: _getStyle()),
          IconButton(
            color: const Color(0XFFFF7676),
            icon: Icon(Icons.keyboard_arrow_right),
            onPressed: (){
            },
          )
        ],
      ),
    );
  }
}