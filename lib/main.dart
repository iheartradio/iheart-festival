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

class _FestivalAppState extends State<FestivalApp> {
  final navigatorKey = GlobalKey<NavigatorState>();

  int _currentIndex = 0;

  final pagesRouteFactories = {
    "/": () => AnimatedPageRoute(
          transition: (anim, child) => child,
          builder: (context) => Center(
                child: SchedulePage(),
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
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        dividerColor: Colors.red,
        fontFamily: 'Avenir',
        iconTheme: IconThemeData(color: const Color(0xFFFF7676)),
        primaryColor: const Color(0xFFFF7676),
        accentColor: const Color(0xFFF54EA2)),
      home: Scaffold(
        body: _buildBody(),
        bottomNavigationBar: BottomNavBar(
          _currentIndex,
          (index) {
            print("Current index; $_currentIndex");
            navigatorKey.currentState
                .pushNamed(pagesRouteFactories.keys.toList()[index]);
            setState(() {
              _currentIndex = index;
            });
          }
        ),
        floatingActionButton: FABCircle(
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

  Widget _buildBody() => MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      onGenerateRoute: (route) => pagesRouteFactories[route.name]());

  BottomNavigationBarItem _buildBottomNavigationBarItem(name, icon) {
    return BottomNavigationBarItem(
        icon: Icon(icon), title: Text(name), backgroundColor: Colors.red);
  }
}
