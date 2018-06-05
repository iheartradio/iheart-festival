
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
            Text(data.date),
            Text(data.stage, textScaleFactor: 1.5),
            VenueRowInfo(data.venue),
            Container(
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
                //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3.0)),
                onPressed: () {
                  //TODO: on pressed
                },
              )
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
    return Row(
      children: <Widget>[
        Text(venue),
        Text("Google Map", style: TextStyle(color: Colors.grey, decoration: TextDecoration.underline),)
      ],
    );
  }
}


/*
child: RaisedButton(
                child: const Text('Buy Tickets'),
                color: Colors.orange,
                textColor: Colors.white,
                elevation: 4.0,
                onPressed: () {
                  print("click");
                },
              ),
 */

