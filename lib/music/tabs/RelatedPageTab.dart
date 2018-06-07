import 'package:flutter/material.dart';
import 'package:iheart_festival/music/RelatedTabViewModel.dart';
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
    return ListView.builder(
      itemCount: model.data.length,
      itemBuilder: (context, index) {
        return RelatedArtistItem(model.data[index]);
      },
    );
  }

}