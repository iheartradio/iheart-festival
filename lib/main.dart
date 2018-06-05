import 'package:flutter/material.dart';
import 'package:iheart_festival/AnimatedPageRoute.dart';
import 'package:iheart_festival/common/Fab.dart';
import 'package:iheart_festival/common/Gradients.dart';
import 'package:iheart_festival/map/MapPage.dart';
import 'package:iheart_festival/qr/QRPage.dart';
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
          builder: (context) => QRPage(),
        ),
    "music": () => AnimatedPageRoute(
          transition: (anim, child) => child,
          builder: (context) => Center(
                child: Text(
                  "Music",
                  style: Theme.of(context).textTheme.body1,
                ),
              ),
        ),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'Avenir',
          iconTheme: IconThemeData(color: const Color(0xFFFF7676)),
          primaryColor: const Color(0xFFFF7676),
          accentColor: const Color(0xFFF54EA2)),
      home: Scaffold(
//        appBar: AppBar(
//          title: Text("iHeartFestival"),
//        ),
        body: _buildBody(),
//        bottomNavigationBar: BottomAppBar(
//          child: SizedBox(
//            height: 64.0,
//          ),
//        ),
        bottomNavigationBar: _buildBottomNavigationBar(context),
        floatingActionButton: FAB(
          onTap: (){

          },
          gradientColors: PINK,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  Widget _buildFAB(BuildContext context) {
    return RotationTransition(
      turns: AlwaysStoppedAnimation(45 / 360),
      child: FloatingActionButton(
        elevation: 18.0,
        child: new RotationTransition(
            turns: AlwaysStoppedAnimation(-45 / 360),
            child: Icon(Icons.card_giftcard)),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(23.0)),
        ),
      ),
    );
  }

  Widget _buildBody() => MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      onGenerateRoute: (route) => pagesRouteFactories[route.name]());

  Widget _buildBottomNavigationBar(context) => BottomNavigationBar(
      currentIndex: _currentIndex,
      items: [
        _buildBottomNavigationBarItem("Schedule", Icons.view_list),
        _buildBottomNavigationBarItem("Map", Icons.map),
        _buildBottomNavigationBarItem("Feed", Icons.rss_feed),
        _buildBottomNavigationBarItem("Music", Icons.music_note)
      ],
      onTap: (index) {
        navigatorKey.currentState
            .pushNamed(pagesRouteFactories.keys.toList()[index]);
        setState(() {
          _currentIndex = index;
        });
      });

  BottomNavigationBarItem _buildBottomNavigationBarItem(name, icon) {
    return BottomNavigationBarItem(
        icon: Icon(icon), title: Text(name), backgroundColor: Colors.red);
  }
}
