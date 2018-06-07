
import 'package:iheart_festival/schedule/ListItem.dart';

class HeaderData implements ListItem {
  final String imagePath;

  HeaderData(this.imagePath);
}

class InfoData implements ListItem {

  final String time;
  final String description;

  const InfoData(this.time, this.description);
}

class ArtistScheduleData implements ListItem {

  String time;
  String title;
  String description;
  String image;
  bool isFavorited;

  ArtistScheduleData(this.time, this.title, this.description, this.image, this.isFavorited);

}