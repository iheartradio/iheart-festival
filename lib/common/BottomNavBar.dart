import 'package:flutter/material.dart';



class BottomNavBar extends StatelessWidget {

  final int currentIndex;
  final ValueChanged<int> onTap;

  BottomNavBar(this.currentIndex, this.onTap);

  @override
  Widget build(BuildContext context) {
    return new BottomAppBar(
      child: new SizedBox(
        height: 59.0,
        child: Row(
          children: <Widget>[
          new Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                SizedBox(width: 8.0,),
                BottomNavButton(Icons.event_note, "Schedule", currentIndex == 0, 0, onTap),
                BottomNavButton(Icons.map, "Map", currentIndex == 1, 1, onTap)
              ],
            ),
          ),
          new Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                BottomNavButton(Icons.notifications, "Feed", currentIndex == 2, 2, onTap),
                BottomNavButton(Icons.music_note, "Music", currentIndex == 3, 3, onTap),
                SizedBox(width: 8.0,),
              ],
            ),
          )
          ],
        ),
      ),
    );
  }

}


class BottomNavButton extends StatelessWidget {

  final int index;
  final IconData icon;
  final String text;
  final bool isSelected;
  final ValueChanged<int> onTap;

  BottomNavButton(this.icon, this.text, this.isSelected, this.index, this.onTap);

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: () {
        if (!isSelected) {
          onTap(index);
        }
      },
      child: new Padding(
        padding: const EdgeInsets.all(8.0),
        child: new SizedBox(
          width: 58.0,
          child: Column(
            children: <Widget>[
              Icon(icon, color: isSelected ? null : Colors.grey,),
              Text(text, style: TextStyle(color: isSelected ? Color(0xFFFF7676) : Colors.grey),)
            ],
          ),
        ),
      ),
    );
  }
}