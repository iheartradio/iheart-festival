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

class FABCircle extends StatelessWidget {

  //List<Color> gradientColors;
  final ValueChanged<int> onTap;
  final int currentIndex;
  final Animation<double> animation;

  FABCircle({this.onTap, this.currentIndex, this.animation});

  @override
  Widget build(BuildContext context) {
    return new ScaleTransition(
      scale: animation,
      child: FloatingActionButton(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.settings_overscan, color: Colors.white,),
              Text("QR", style: TextStyle(color: currentIndex == 4 ? Colors.white : Colors.white70),)
            ],
        ),
        onPressed: () {
          onTap(4);
        },
      ),
    );
  }

}