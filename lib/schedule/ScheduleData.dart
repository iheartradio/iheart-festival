
class HeaderData {
  final String imagePath;

  HeaderData(this.imagePath);
}

class InfoData {

  final String time;
  final String description;

  InfoData(this.time, this.description);
}

class ArtistScheduleData {

  final String time;
  final String title;
  final String description;
  final String image;
  final bool isFavorited;

  const ArtistScheduleData(this.time, this.title, this.description, this.image, this.isFavorited);

}