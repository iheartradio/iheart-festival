import 'package:flutter/material.dart';
import 'package:iheart_festival/AnimatedPageRoute.dart';
import 'package:iheart_festival/common/BottomNavBar.dart';
import 'package:iheart_festival/common/Fab.dart';
import 'package:iheart_festival/common/Gradients.dart';
import 'package:iheart_festival/feed/FeedPage.dart';
import 'package:iheart_festival/map/MapPage.dart';
import 'package:iheart_festival/music/MusicPage.dart';
import 'package:iheart_festival/qr/QRPage.dart';
import 'package:iheart_festival/qr/QRViewModelProvider.dart';

import 'package:iheart_festival/schedule/SchedulePage.dart';


void main() => runApp(new FestivalApp());

class FestivalApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FestivalAppState();
}

class _FestivalAppState extends State<FestivalApp> with TickerProviderStateMixin {
   final navigatorKey = GlobalKey<NavigatorState>();

  int _currentIndex = 0;

  AnimationController animationController;
  Animation<double> fabAnimation;

  final pagesRouteFactories = {
    "/": () => AnimatedPageRoute(
          transition: (anim, child) => child,
          builder: (context) => Center(
                child: SchedulePage((){

                }),
              ),
        ),
    "map": () => AnimatedPageRoute(
          transition: (anim, child) => child,
          builder: (context) => Center(
                child: MapPage(),
              ),
        ),
    "feed": () => AnimatedPageRoute(
          transition: (anim, child) => child,
          builder: (context) => FeedPage(),
        ),
    "music": () => AnimatedPageRoute(
          transition: (anim, child) => child,
          builder: (context) => MusicPage()/*new QRViewModelProvider(child: QRPage())*/,
        ),
    "ticket": () => AnimatedPageRoute(
      transition: (anim, child) => child,
      builder: (context) => new QRViewModelProvider(child: QRPage()),
    ),
  };

  @override
  void initState() {
    animationController = AnimationController(
      duration: Duration(milliseconds: 800),
      vsync: this
    );

    final Animation<double> easeSelection = new CurvedAnimation(
      parent: animationController,
      curve: Curves.easeInOut,
    );

    fabAnimation = Tween<double>(begin: 1.0, end: 1.3).animate(easeSelection);
    animationController.addStatusListener((status) {
      if (AnimationStatus.completed == status) {
        animationController.reverse();
      }
    });


    animationController.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Avenir',
        iconTheme: IconThemeData(color: RED),
        primaryColor: RED,
        accentColor: PURPLE),
      home: Scaffold(
        body: _buildBody(),
        bottomNavigationBar: BottomNavBar(
          _currentIndex,
          (index) {
            navigate(index);
//            print("Current index; $_currentIndex");
//            navigatorKey.currentState
//                .pushNamed(pagesRouteFactories.keys.toList()[index]);
//            setState(() {
//              _currentIndex = index;
//            });
          }
        ),
        floatingActionButton: FABCircle(
          animation: fabAnimation,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
            navigatorKey.currentState.pushNamed(pagesRouteFactories.keys.toList()[index]);
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  void navigate(int index) {
    print("Current index; $_currentIndex");
    navigatorKey.currentState
        .pushNamed(pagesRouteFactories.keys.toList()[index]);
    setState(() {
      _currentIndex = index;
    });
  }

  Widget _buildBody() => MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      onGenerateRoute: (route) => pagesRouteFactories[route.name]());
}
