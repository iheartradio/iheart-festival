import 'package:flutter/material.dart';

class FlexibleScheduleHeader extends StatelessWidget {

  final String stageBackground;

  FlexibleScheduleHeader(this.stageBackground);

  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      background: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset("background.png",fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(48.0),
            child: Image.asset(stageBackground, width: 200.0, height: 200.0,),
          )
        ],
      ),
    ) ;
  }
}