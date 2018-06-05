
import 'package:flutter/material.dart';
import 'package:iheart_festival/LocalInfoItem.dart';
import 'package:iheart_festival/LocalInfoItemData.dart';
import 'package:iheart_festival/schedule/ScheduleData.dart';
import 'package:iheart_festival/schedule/ScheduleViewModel.dart';
import 'package:iheart_festival/schedule/schedule_list_item.dart';

class TabPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _TabPageState();

}

class _TabPageState extends State<TabPage> {

  ScheduleViewModel model;

  @override
  void initState() {
    model = ScheduleViewModel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
      return ListView.builder(
          itemCount: model.items.length,
          itemBuilder: (context, index) {
          final item = model.items[index];

            if (item is LocalInfoItemData) {
              return LocalInfoItem(model.items[index]);
            } else if(item is ArtistScheduleData) {
              return ScheduleListItem(
                onItemTapped: (data) {

                },
                onFavoriteTapped: (data) {

                },
                data: model.items[index],
              );
            }
          }
      );
  }
}