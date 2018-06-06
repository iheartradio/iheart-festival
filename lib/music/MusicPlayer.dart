
import 'package:flutter/material.dart';

class MusicPlayerPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MusicPlayerPageState();

}

class _MusicPlayerPageState extends State<MusicPlayerPage> {

  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      background: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset('soundwaves_on.png', fit: BoxFit.cover,)
        ],
      ),
    );
  }
}