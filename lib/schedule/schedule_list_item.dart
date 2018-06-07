import 'package:flutter/material.dart';
import 'package:iheart_festival/common/HeartButton.dart';
import 'package:iheart_festival/schedule/ScheduleData.dart';

typedef void TwinValueSetter<T, D>(T value, D value2);

class ScheduleListItem extends StatelessWidget {

  final ValueSetter<ArtistScheduleData> onFavoriteTapped;
  final ValueSetter<ArtistScheduleData> onItemTapped;
  final ArtistScheduleData data;

  ScheduleListItem({this.onItemTapped, this.onFavoriteTapped, this.data});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onItemTapped(data);
      },
      child: new Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Row(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  data.time,
                  style: Theme.of(context).textTheme.body1.copyWith(color: Colors.red),
                ),
                Text(
                  data.title,
                  style: Theme.of(context).textTheme.title,
                ),
                Text(
                  data.description,
                  style: Theme.of(context).textTheme.caption,
                )
              ],
            ),
            new Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.red,
                    backgroundImage: NetworkImage(data.image),
                  ),
                  new HeartButton(
                    isFavorited: data.isFavorited,
                    onPressed: () {
                      onFavoriteTapped(data);
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}