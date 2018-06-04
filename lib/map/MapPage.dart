import 'package:flutter/material.dart';
import 'package:zoomable_image/zoomable_image.dart';



class MapPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _MapPageState();

}

class _MapPageState extends State<MapPage> {

  double scale = 1.0;
  double xOffset = 0.0;
  double yOffset = 0.0;

  @override
  void initState() {
    scale = 1.0;
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
    return new Container(
      child: new ZoomableImage(
        AssetImage("map.png"),
        maxScale: 0.5,
        backgroundColor: const Color(0xF5F5F5),
      )
    );
  }

}