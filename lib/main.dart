import 'package:flutter/material.dart';
import 'package:iheart_festival/AnimatedPageRoute.dart';
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
        child: Text("Map",style: Theme.of(context).textTheme.body1,),
      ),
    ),
    "feed": () => AnimatedPageRoute(
      transition: (anim, child) => child,
      builder: (context) => Center(
        child: Text("Feed",style: Theme.of(context).textTheme.body1,),
      ),
    ),
    "music": () => AnimatedPageRoute(
      transition: (anim, child) => child,
      builder: (context) => Center(
        child: Text("Music",style: Theme.of(context).textTheme.body1,),
      ),
    ),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        iconTheme: IconThemeData(color: Colors.blue),
        primaryColor: Colors.red,
        accentColor: Colors.blue
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("iHeartFestival"),
        ),
        body: _buildBody(),
//        bottomNavigationBar: BottomAppBar(
//          child: SizedBox(height: 64.0,),
//          color: Colors.red,
//        ),
        bottomNavigationBar: _buildBottomNavigationBar(context),
        floatingActionButton: FloatingActionButton(child: Icon(Icons.card_giftcard),),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

    Widget _buildBody() => MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      onGenerateRoute: (route) => pagesRouteFactories[route.name]()
    );

    Widget _buildBottomNavigationBar(context) => BottomNavigationBar(
      currentIndex: _currentIndex,
      items: [
        _buildBottomNavigationBarItem("Schedule", Icons.view_list),
        _buildBottomNavigationBarItem("Map", Icons.map),
        _buildBottomNavigationBarItem("Feed", Icons.rss_feed),
        _buildBottomNavigationBarItem("Music", Icons.music_note)
      ],
      onTap: (index) {
        navigatorKey.currentState.pushNamed(pagesRouteFactories.keys.toList()[index]);
        setState(() {
          _currentIndex = index;
        });
      }
    );

    BottomNavigationBarItem _buildBottomNavigationBarItem(name, icon) {
      return BottomNavigationBarItem(
        icon: Icon(icon),
        title: Text(name),
        backgroundColor: Colors.red
      );
    }
}