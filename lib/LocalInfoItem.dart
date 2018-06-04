
import 'package:flutter/material.dart';
import 'package:iheart_festival/LocalInfoItemData.dart';

class LocalInfoItem extends StatelessWidget {

//  final LocalInfoItemData data;
//
//  LocalInfoItem(this.data)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 16.0, left: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('09/22'),
            Text('Daytime stage', textScaleFactor: 1.5,),
            VenueRowInfo(),
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
                  print("Buy Tickets ...");
                },
              )
            )
          ],
        ),
      ),
    );
  }
}

class VenueRowInfo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text("Las Vegas Festival Grounds!"),
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

