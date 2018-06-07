
import 'package:flutter/material.dart';
import 'package:iheart_festival/music/AlbumListItem.dart';
import 'package:iheart_festival/music/HeaderItem.dart';
import 'package:iheart_festival/music/LatestReleaseItem.dart';
import 'package:iheart_festival/music/SongListItem.dart';
import 'package:iheart_festival/music/data/OverviewData.dart';

class OverviewPageTab extends StatefulWidget {

  final List<Object> items;

  OverviewPageTab(this.items);

  @override
  State<StatefulWidget> createState() => _OverviewPageState(items);
}

class _OverviewPageState extends State<OverviewPageTab> {

  final List<Object> items;

  _OverviewPageState(this.items);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];

          if (item is LatestReleaseData) {
            return LatestReleaseItem(items[index]);

          } else if (item is SongsHeaderData) {
            return HeaderItem(items[index]);

          } else if (item is SongListItemData) {
            return SongListItem(items[index]);
          } else if (item is AlbumData) {
            return AlbumListItem(items[index]);
          }
        }
    );
  }
}

/*
return ListView.builder(

      itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];

          if (item is LatestReleaseData) {
            return LatestReleaseItem(items[index]);

          } else if (item is SongsHeaderData) {
            return HeaderItem(items[index]);

          } else if (item is SongListItemData) {
            return SongListItem(items[index]);

          } else if (item is AlbumData) {

          }
        }
    );
 */