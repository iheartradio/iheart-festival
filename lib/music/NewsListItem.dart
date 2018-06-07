
import 'package:flutter/material.dart';
import 'package:iheart_festival/music/data/AboutData.dart';

class NewsListItem extends StatelessWidget {

  final NewsItemData data;
  const NewsListItem(this.data);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 25.0, bottom: 16.0, top: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image(
            image: AssetImage(data.image),
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(data.headline, style: TextStyle(fontSize: 14.0, color: Colors.black),),
          ),
          Text(data.author,  style: TextStyle(fontSize: 12.0, color: Colors.grey)),
          Text(data.date, style: TextStyle(fontSize: 12.0, color: Colors.grey))
        ],
      ),
    );
  }
}