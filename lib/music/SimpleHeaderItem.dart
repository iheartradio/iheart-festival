
import 'package:flutter/material.dart';
import 'package:iheart_festival/music/data/AboutData.dart';

class SimpleHeaderItem extends StatelessWidget {
  final SimpleHeaderData data;

  SimpleHeaderItem(this.data);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, top: 16.0),
      child: Text(data.header, style: TextStyle(color: const Color(0xFFFF7676), fontSize: 16.0),),
    );
  }
}