
import 'package:flutter/material.dart';
import 'package:iheart_festival/LocalInfoItem.dart';
import 'package:iheart_festival/LocalInfoItemData.dart';
import 'package:iheart_festival/schedule/ListItem.dart';
import 'package:iheart_festival/schedule/ScheduleData.dart';
import 'package:iheart_festival/schedule/schedule_list_item.dart';

class TabPage extends StatefulWidget {

  final List<ListItem> items;
  TabPage(this.items);

  @override
  State<StatefulWidget> createState() => _FridayPageState(items);

}

class _FridayPageState extends State<TabPage> {

  final List<ListItem> items;

  _FridayPageState(this.items);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: items.length,
          itemBuilder: (context, index) {
          final item = items[index];

            if (item is LocalInfoItemData) {
              return LocalInfoItem(items[index]);
            } else if(item is ArtistScheduleData) {
              return ScheduleListItem(
                onItemTapped: (data) {

                },
                onFavoriteTapped: (data) {

                },
                data: items[index],
              );
            }
          }
      ),
    );
  }
}