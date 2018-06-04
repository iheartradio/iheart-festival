import 'package:flutter/material.dart';

class ScheduleHeader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned.fill(child: Image.asset('background.png',fit: BoxFit.cover)),
        Positioned(
          bottom: 20.0,
          left: 20.0,
          right: 20.0,
          child: Image.asset('daytime_stage-logo.png', fit: BoxFit.cover),
        )
      ],
    ) ;
  }
}