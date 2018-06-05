
import 'package:iheart_festival/schedule/ListItem.dart';

class HeaderData implements ListItem {
  final String imagePath;

  HeaderData(this.imagePath);
}

class InfoData implements ListItem {

  final String time;
  final String description;

  InfoData(this.time, this.description);
}

class ArtistScheduleData implements ListItem {

  final String time;
  final String title;
  final String description;
  final String image;
  final bool isFavorited;

  const ArtistScheduleData(this.time, this.title, this.description, this.image, this.isFavorited);

}