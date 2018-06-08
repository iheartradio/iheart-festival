
import 'package:flutter/material.dart';
import 'package:iheart_festival/common/Gradients.dart';

class GradientAppBar extends StatelessWidget {

  final String title;
  final double barHeight = 50.0;

  GradientAppBar({this.title});

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Text(
            title,
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          ),
        ),
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: PINK,
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(0.5, 0.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp
        )
      ),
    );
  }
}