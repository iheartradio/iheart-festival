import 'dart:async';

import 'package:flutter/material.dart';
import 'package:iheart_festival/music/data/RelatedData.dart';
import 'package:rxdart/rxdart.dart';


class RelatedTabViewModel {

  List<Object> data = _MOCK_DATA;

  final BehaviorSubject<List<Object>> subject = BehaviorSubject<List<Object>>(seedValue: List());

  RelatedTabViewModel() {
    subject.add(data);
  }

  void favorite(int index) {
    RelatedItemData item = (data[index] as RelatedItemData);
    item.isFavorited = !item.isFavorited;
    subject.add(data);
  }

  Stream<List<Object>> dataStream() {
    return subject.stream;
  }
}

class RelatedTabViewModelProvider extends InheritedWidget {

  final RelatedTabViewModel relatedTabViewModel;

  RelatedTabViewModelProvider({
    Key key,
    RelatedTabViewModel relatedTabViewModel,
    Widget child,
  })  : relatedTabViewModel = relatedTabViewModel ?? RelatedTabViewModel(),
        super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static RelatedTabViewModel of(BuildContext context) =>
      (context.inheritFromWidgetOfExactType(RelatedTabViewModelProvider) as RelatedTabViewModelProvider)
          .relatedTabViewModel;

}

List<Object> _MOCK_DATA = [

  RelatedHeader(),

  RelatedItemData(
    "Anne-Marie",
    "Pop, Contemporary R&B",
    "annemarie.jpeg",
    false
  ),
  RelatedItemData(
    "Halsey",
    "Electro Pop, Synth Pop",
    "halsey.jpeg",
    true
  ),
  RelatedItemData(
      "Aleesia Cara",
      "Alternative R&B, Indie Pop",
      "alessia.jpeg",
      false
  ),
  RelatedItemData(
      "Selena Gomez",
      "Pop, Dance Pop",
      "selenagomez.jpeg",
      true
  ),
  RelatedItemData(
      "Bebe Rexha",
      "Pop, Hip Hop",
      "beberexha.jpeg",
      false
  ),
  RelatedItemData(
      "Astrid S",
      "Pop, Tropical House",
      "astrids.jpeg",
      false
  )
];