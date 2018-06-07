import 'package:flutter/material.dart';
import 'package:iheart_festival/common/Gradients.dart';

class MusicPlayerPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MusicPlayerPageState();
}

class _MusicPlayerPageState extends State<MusicPlayerPage> {
  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      background: Stack(
        //fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            'soundwaves_on.png',
            fit: BoxFit.cover,
          ),
          Positioned(left: 90.0, top: 16.0, child: _buildHeader(context)),
          Positioned(
            right: 0.0,
            top: 140.0,
            child: SizedBox(
                height: 110.0,
                child: Image.asset(
                  'artist_ariana_medium.png',
                )),
          ),
          Positioned(
            left: 60.0,
            top: 80.0,
            child: SizedBox(
                height: 160.0,
                child: Image.asset(
                  'artist_dualipa_large.png',
                )),
          ),
          Positioned(
            left: 0.0,
            top: 105.0,
            child: SizedBox(
                height: 110.0,
                child: Image.asset(
                  'artist_flume_medium.png',
                )),
          ),
          Positioned(left: 78.0, top: 250.0, child: _buildPlayer(context))
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Dua Lipa",
            style: Theme
                .of(context)
                .textTheme
                .title
                .copyWith(color: Colors.white, fontSize: 18.0)),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: Text(
            "Pop, Synth Pop",
            style: Theme.of(context).textTheme.caption.copyWith(color: Colors.white70)
          ),
        ),
        Text(
          "11AM @ iHeartRadio Music Festival",
          style: Theme.of(context).textTheme.caption.copyWith(color: RED)
        ),
      ],
    );
  }

  Widget _buildPlayer(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Text("Dua Lipa Radio"),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4.0, left: 12.0),
          child: Text(
            "No Tears Left To Cry * Ariana Grande",
            style: Theme.of(context).textTheme.caption.copyWith(color: Colors.grey),
          ),
        ),
        Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.favorite_border, color: Colors.grey[600]),
              onPressed: () {

              },
            ),
            IconButton(
              icon: Icon(Icons.pause, color: Colors.grey[600], size: 28.0,),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.fast_forward, color: Colors.grey[600], size: 28.0,),
              onPressed: () {},
            ),
            IconButton(
              icon: SizedBox(
                height: 24.0,
                child: Image(
                  image: AssetImage("dots_vertical.png"),
                  color: Colors.grey[600],
                ),
              ),
              onPressed: () {},
            )
          ],
        )
      ],
    );
  }

//  Widget _buildIcon(BuildContext context) {
//    return IconButton(icon: ,)
//  }
}
