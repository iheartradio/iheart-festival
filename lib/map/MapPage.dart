import 'package:flutter/material.dart';
import 'package:iheart_festival/common/Gradients.dart';
import 'package:iheart_festival/common/StatusBar.dart';
import 'package:iheart_festival/map/MapSubPage.dart';
import 'package:iheart_festival/schedule/SchedulePage.dart';
import 'package:zoomable_image/zoomable_image.dart';



class MapPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _MapPageState();

}

class _MapPageState extends State<MapPage> with SingleTickerProviderStateMixin {

  TabController _tabController;

  final List<TabData> tabs = <TabData>[
    TabData("Music Festival", 0, const Color(0xFFFF7676)),
    TabData("Daytime Stage", 1, const Color(0xFFFF7676)),

  ];

  double scale = 1.0;
  double xOffset = 0.0;
  double yOffset = 0.0;

  @override
  void initState() {
    scale = 1.0;
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener((){
      setState((){

      });
    });
    super.initState();
  }

//  @override
//  Widget build(BuildContext context) {
//    return GestureDetector(
//      onHorizontalDragUpdate: (dragUpdate) {
//        setState(() {
//          xOffset = dragUpdate.globalPosition.dx;
//        });
//      },
//      onVerticalDragUpdate: (dragUpdate) {
//        setState(() {
//          yOffset = dragUpdate.globalPosition.dy;
//        });
//      },
//      onScaleUpdate: (scaleUpdate) {
//        setState(() {
//          scale = scaleUpdate.scale;
//        });
//      },
//      child: Stack(
//        children: <Widget>[
//          new Positioned(
//            left: xOffset,
//            top: yOffset,
//            height: scale * 600.0,
//            child: Image(image: AssetImage("map.png"))
//          ),
//          Positioned(
//            top: 130.0 * scale,
//            left: 120.0 * scale,
//            child: new SizedOverflowBox(
//              size: Size(70.0, 70.0),
//              child: Icon(Icons.image),
//              alignment: Alignment.bottomCenter
//            ),
//          ),
//        ],
//      ),
//    );
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Column(
        children: <Widget>[
          StatusBar(),
          TabBar(
            tabs: tabs.map((tab) {
              Color color = tab.index == _tabController.index ? const Color(0xFFFF7676) : Colors.black;
              return Tab(
                child: Text(tab.label.toUpperCase(), style: TextStyle(color: color)),
              );
            }).toList(),
            indicatorColor: const Color(0xFFFF7676),
            controller: _tabController,
          ),
          Expanded(
            child: TabBarView(
              children: [
                MapSubPage(),
                MapSubPage()
              ],
              controller: _tabController,
            ),
          )
        ],
      )
    );
  }



}