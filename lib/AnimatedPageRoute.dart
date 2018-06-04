import 'package:flutter/material.dart';

typedef Widget AnimatedTransition(Animation<double> opacity, Widget child,);

class AnimatedPageRoute extends MaterialPageRoute {

  AnimatedTransition transition;

  AnimatedPageRoute({ WidgetBuilder builder, RouteSettings settings, this.transition})
      : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
    if (settings.isInitialRoute)
      return child;
    // Fades between routes. (If you don't want any animation,
    // just return child.)
    return transition(animation, child);
    //return new FadeTransition(opacity: animation, child: child);
  }

}