import 'package:flutter/material.dart';



class QRTicketItem extends StatelessWidget {

  final Animation<double> animation;

  QRTicketItem(this.animation);

  @override
  Widget build(BuildContext context) {
    return new FadeTransition(
      opacity: animation,
      child: new Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text("This QR code is your ticket", style: Theme.of(context).textTheme.headline,),
            SizedBox(height: 5.0,),
            Text("to access the festival and branced experiences.", style: Theme.of(context).textTheme.body1,),
            SizedBox(height: 32.0,),
            new SizedBox(
              height: 240.0,
              child: Image(image: AssetImage("qr_code.png"),)
            )
          ],
        ),
      ),
    );
  }

}