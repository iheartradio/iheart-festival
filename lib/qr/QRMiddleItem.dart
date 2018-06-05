import 'package:flutter/material.dart';

class QRMiddleItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.only(top: 86.0),
      child: new SizedBox(
        height: 100.0,
        width: double.infinity,
        child: new Stack(
          children: <Widget>[
            new OverflowBox(
              child: Image(
                image: AssetImage("bg-wave.png"),
              ),
              maxHeight: 230.0,
            ),
            new Center(
              child: new Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  "Don't forget to check out our \n branded experiences for a chance \n to win upgrades, prizes, and more!",
                  style: Theme.of(context).textTheme.title.copyWith(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
