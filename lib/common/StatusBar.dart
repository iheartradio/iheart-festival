import 'package:flutter/material.dart';
import 'package:iheart_festival/common/Gradients.dart';


class StatusBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: PINK
          )
      ),
      height: 24.0,
    );
  }

}