
import 'package:flutter/material.dart';
import 'package:iheart_festival/music/data/OverviewData.dart';

class AlbumListItem extends StatelessWidget {

  final AlbumData data;
  AlbumListItem(this.data);

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
                  Text(data.title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),),
                  Text(data.description, style: TextStyle(fontSize: 12.0, color: Colors.grey))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/*
return Column(
      children: <Widget>[
        Expanded(
          child: GridView.count(
            crossAxisCount: 2,
            children: <Widget>[
              SingleItem("IDGAF", "May 2018 - 5 Songs", "album_dualipa_liveacoustic.png"),
              SingleItem("IDGAF", "May 2018 - 5 Songs", "album_dualipa_liveacoustic.png"),
              SingleItem("IDGAF", "May 2018 - 5 Songs", "album_dualipa_liveacoustic.png"),
              SingleItem("IDGAF", "May 2018 - 5 Songs", "album_dualipa_liveacoustic.png"),
            ],
          ),
        )
      ],
    );
 */