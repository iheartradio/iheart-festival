import 'package:flutter/material.dart';
import 'package:iheart_festival/common/Gradients.dart';
import 'package:iheart_festival/schedule/SchedulePage.dart';
import 'package:zoomable_image/zoomable_image.dart';



class MapSubPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _MapSubPageState();

}

class _MapSubPageState extends State<MapSubPage> with SingleTickerProviderStateMixin {

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
    return new Stack(
      children: <Widget>[
        ZoomableImage(
          AssetImage("map.png"),
          maxScale: 0.5,
          backgroundColor: const Color(0xF5F5F5),
        ),
        Positioned(
          left: 16.0,
          bottom: 16.0,
          child: _buildZoomButton(context),
        )
      ],
    );
  }

  Widget _buildZoomButton(BuildContext context) {
    return Container(
      width: 50.0,
      height: 100.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(3.0)),
        border: Border.all(color: Colors.grey),
      ),
      child: Column(
        children: <Widget>[
          Expanded(
            child: GestureDetector(
              child: Icon(Icons.add),
              onTap: () {
                setState(() {
                  scale += .1;
                });
              },
            )
          ),
          Container(
            height: 1.0,
            width: double.infinity,
            color: Colors.grey,
          )  ,
          Expanded(
            child: GestureDetector(
              child: Icon(Icons.remove),
              onTap: () {
                setState(() {
                  scale -= .1;
                });
              },
            )
          ),
        ],
      ),
    );
  }

}