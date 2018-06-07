
import 'package:flutter/material.dart';
import 'package:iheart_festival/music/BiographyItem.dart';
import 'package:iheart_festival/music/ReadMoreHeader.dart';
import 'package:iheart_festival/music/SimpleHeaderItem.dart';
import 'package:iheart_festival/music/data/AboutData.dart';

class AboutPageTab extends StatefulWidget {

  final List<Object> items;
  AboutPageTab(this.items);

  @override
  State<StatefulWidget> createState() => AboutPageTabState(items);

}

class AboutPageTabState extends State<AboutPageTab> {

  final List<Object> items;
  AboutPageTabState(this.items);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        if (item is SimpleHeaderData) {
          return SimpleHeaderItem(items[index]);
        } else if (item is BiographyData) {
          return BiographyItem();
        } else if (item is ReadMoreData) {
          return ReadMoreHeader(items[index]);
        }
      });
  }
}