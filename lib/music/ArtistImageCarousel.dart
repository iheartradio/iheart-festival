
import 'package:flutter/material.dart';
import 'package:iheart_festival/music/data/AboutData.dart';

class ArtistImageCarousel extends StatelessWidget {

  final CarouselData data;
  ArtistImageCarousel(this.data);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: data.images.length,
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 160.0,
                child: Image(
                  image: AssetImage(data.images[index]),
                  fit: BoxFit.cover,
                ),
              ),
            );
          }
      ),
    );
  }

}