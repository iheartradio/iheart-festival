import 'package:flutter/material.dart';

class ScheduleHeader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      background: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset('background.png',fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(48.0),
            child: Image.asset('daytime_stage-logo.png', width: 200.0, height: 200.0,),
          )
        ],
      ),
    ) ;
  }
}