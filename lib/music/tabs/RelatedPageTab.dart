import 'package:flutter/material.dart';
import 'package:iheart_festival/music/RelatedTabViewModel.dart';
import 'package:iheart_festival/music/data/RelatedData.dart';
import 'package:iheart_festival/music/listitems/RelatedArtistItem.dart';

class RelatedPageTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RelatedPageTabState();
}

class _RelatedPageTabState extends State<RelatedPageTab> {
  RelatedTabViewModel model;

  @override
  void initState() {
    model = RelatedTabViewModel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.white,
      child: ListView.builder(
        itemCount: model.data.length,
        itemBuilder: (context, index) {
          var itemData = model.data[index];
          if (itemData is RelatedItemData) {
            return RelatedArtistItem(itemData);
          } else {
            return new Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text("Related Artists",
                  style: Theme
                      .of(context)
                      .textTheme
                      .title
                      .copyWith(
                        color: const Color(0xFFFF7676),
                        fontSize: 18.0
                      )
              ),
            );
          }
        },
      ),
    );
  }
}
