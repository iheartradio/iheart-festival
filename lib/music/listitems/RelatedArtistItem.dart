import 'package:flutter/material.dart';
import 'package:iheart_festival/common/HeartButton.dart';
import 'package:iheart_festival/music/RelatedTabViewModel.dart';
import 'package:iheart_festival/music/data/RelatedData.dart';


class RelatedArtistItem extends StatelessWidget {

  final RelatedItemData data;
  final int index;

  RelatedArtistItem(this.data, this.index);

  @override
  Widget build(BuildContext context) {
    final RelatedTabViewModel model = RelatedTabViewModelProvider.of(context);
    return new Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            new Padding(
              padding: const EdgeInsets.only(
                  top: 8.0,
                  bottom: 8.0,
                  left: 16.0,
                  right: 12.0
              ),
              child: new SizedBox(
                  width: 90.0,
                  child: Image(image: AssetImage(data.image))
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(data.title, style: Theme.of(context).textTheme.title,),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text(data.subtitle, style: Theme.of(context).textTheme.body1.copyWith(color: Colors.grey),),
                ],
              ),
            ),
            new Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: HeartButton(
                isFavorited: data.isFavorited,
                onPressed: (){
                  model.favorite(index);
                }
              )
            ),
          ],
        ),
        Divider()
      ],
    );
  }

}

