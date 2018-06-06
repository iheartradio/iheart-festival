
import 'package:flutter/material.dart';
import 'package:iheart_festival/music/data/OverviewData.dart';

class SongListItem extends StatelessWidget {

  final SongListItemData data;

  SongListItem(this.data);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, bottom: 16.0),
      child: Row(
        children: <Widget>[
          Text(
            data.counter, style: TextStyle(color: Colors.black),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Image(
              image: AssetImage(data.image),
              width: 50.0,
              height: 50.0,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(data.albumName, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0)),
                Text(data.name, style: TextStyle(color: Colors.grey, fontSize: 12.0),)
              ],
            ),
          ),
          IconButton(
            icon: Icon(Icons.favorite),
            color: Colors.pink[400],
            onPressed: () {
            },
          )
        ],
      ),
    );
  }
}