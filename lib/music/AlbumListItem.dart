
import 'package:flutter/material.dart';
import 'package:iheart_festival/music/data/OverviewData.dart';

class AlbumListItem extends StatelessWidget {

  final AlbumCarouselData data;
  AlbumListItem(this.data);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      child: Padding(
        padding: const EdgeInsets.only(left: 24.0),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: data.albums.length,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Container(
                    width: 150.0,
                    height: 150.0,
                    child: Image(
                      image: AssetImage(data.albums[index].image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(data.albums[index].title, style: TextStyle(fontWeight: FontWeight.bold),),
                Text(data.albums[index].description, style: TextStyle(color: Colors.grey))
              ],
            );
          }
        ),
      ),
    );
  }
}