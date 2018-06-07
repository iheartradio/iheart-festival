
import 'package:flutter/material.dart';

class BiographyItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        child: Text(
          '''English pop singer Dua Lipa showcased a 
throwback vibe and a knack for catchy pop with soulful grit, much like Sia, Jessie J, or P!nk, and a slyly rebellious air like Charli XCX or Marina & the Diamonds. After a steady rise in the U.K., she broke onto the U.S. charts with a series of collaborations with Sean Paul, 
Martin Garrix, and Calvin Harris, as well as multi-platinum singles "New Rules" and "IDGAF" from her 2017 debut, Dua Lipa.
          ''',
          softWrap: true,
          style: TextStyle(color: const Color(0xFF263245), fontSize: 14.0),
        ),
      ),
    );
  }
}