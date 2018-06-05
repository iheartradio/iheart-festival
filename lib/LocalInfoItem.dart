
import 'package:flutter/material.dart';
import 'package:iheart_festival/LocalInfoItemData.dart';

class LocalInfoItem extends StatelessWidget {

  final LocalInfoItemData data;

  LocalInfoItem(this.data);

  @override
  Widget build(BuildContext context) {
      return Container(
        padding: EdgeInsets.only(top: 8.0, left: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(data.date, style: TextStyle(fontFamily: 'Avenir')),
            Text(data.stage, textScaleFactor: 1.5),
            VenueRowInfo(data.venue),
            Container(
              width: 110.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [const Color(0xFFFF7676), const Color(0xFFF54EA2)],
                )
              ),
              child: RawMaterialButton(
                child: Text("Buy Tickets"),
                textStyle: TextStyle(color: Colors.white, fontStyle: FontStyle.normal),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3.0)),
                onPressed: () {
                  //TODO: on pressed - go to Code (?)
                },
              )
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 32.0, right: 32.0, bottom: 8.0),
              child: Divider(indent: 0.0, color: Colors.grey),
            )
          ],
        ),
      );
  }
}

class VenueRowInfo extends StatelessWidget {

  final String venue;

  VenueRowInfo(this.venue);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: Row(
        children: <Widget>[
          Text(venue),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text("Google Map", style: TextStyle(color: Colors.grey, decoration: TextDecoration.underline)),
          )
        ],
      ),
    );
  }
}

