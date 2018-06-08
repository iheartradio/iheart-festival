import 'package:flutter/material.dart';
import 'package:iheart_festival/LocalInfoItemData.dart';
import 'package:iheart_festival/music/MusicPage.dart';
import 'package:iheart_festival/schedule/ScheduleData.dart';
import 'package:iheart_festival/schedule/ScheduleViewModel.dart';
import 'package:iheart_festival/schedule/info/LocalInfoItem.dart';
import 'package:iheart_festival/schedule/info/LocalInfoItemSimple.dart';
import 'package:iheart_festival/schedule/schedule_list_item.dart';

class TabPage extends StatefulWidget {

  final ScheduleViewModel model;
  final VoidCallback onNavigate;

  TabPage(this.model, this.onNavigate);

  @override
  State<StatefulWidget> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {

  @override
  Widget build(BuildContext context) {
      return new StreamBuilder<List<Object>>(
        stream: widget.model.dataStream(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  final item = snapshot.data[index];
                  if (item is LocalInfoItemData) {
                    return LocalInfoItem(item);
                  } else if (item is InfoData) {
                    return LocalInfoItemSimple(item);
                  } else if(item is ArtistScheduleData) {
                    return ScheduleListItem(
                      onItemTapped: (data) {
                        widget.onNavigate;
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => MusicPage()
                          )
                        );
                      },
                      onFavoriteTapped: (data) {
                        widget.model.favorite(index);
                      },
                      data: item,
                    );
                  }
                }
            );
          }
        },
      );
  }
}