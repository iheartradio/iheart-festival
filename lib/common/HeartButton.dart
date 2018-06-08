//import 'package:flutter/material.dart';


import 'dart:ui';

import 'package:flutter/material.dart';


class HeartButton extends StatefulWidget {

  VoidCallback onPressed;
  bool isFavorited;

  HeartButton({this.isFavorited, this.onPressed});

  @override
  State<StatefulWidget> createState() => _HeartButtonState();

}

class _HeartButtonState extends State<HeartButton> with TickerProviderStateMixin{

  AnimationController animationController;
  Animation<double> spinAnimation;
  bool isSelected;

  @override
  void initState() {
    isSelected = widget.isFavorited;
    animationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this
    );

    final Animation<double> easeSelection = new CurvedAnimation(
      parent: animationController,
      curve: Curves.easeInOut,
    );

    spinAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(easeSelection);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: new RotationTransition(
        turns: spinAnimation,
        child: Icon(
            widget.isFavorited ? Icons.favorite : Icons.favorite_border,
            color: widget.isFavorited ? Colors.pink[400] : Colors.grey),
      ),
      onPressed: () {
        if (isSelected) {
          animationController.forward();
        } else {
          animationController.reverse(from: 1.0);
        }
        //animationController.forward();
        isSelected = !isSelected;
        widget.onPressed();
      },
    );
  }

}