import 'package:iheart_festival/music/data/RelatedData.dart';


class RelatedTabViewModel {

  final List<Object> data = _MOCK_DATA;

}

List<Object> _MOCK_DATA = [

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