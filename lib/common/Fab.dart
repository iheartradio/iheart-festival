import 'package:flutter/material.dart';

class FAB extends StatelessWidget {


  GestureTapCallback onTap;
  List<Color> gradientColors;
  Widget child;

  FAB({this.onTap, this.gradientColors, this.child});

  @override
  Widget build(BuildContext context) {
    return new RotationTransition(
      turns: AlwaysStoppedAnimation(45 / 360),
      child: new GestureDetector(
        onTap: onTap,
        child: Container(
          width: 56.0,
          height: 56.0,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow()
              ],
              borderRadius: BorderRadius.all(Radius.circular(23.0)),
              gradient: LinearGradient(
                  colors: gradientColors
              )
          ),
          child: new RotationTransition(
            turns: AlwaysStoppedAnimation(-45 / 360),
            child: child
          ),
        ),
      ),
    );
  }

}