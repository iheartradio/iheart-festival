
class LatestReleaseData {

  final String title;
  final String description;
  final String image;
  final String info;

  const LatestReleaseData({this.title, this.description, this.image, this.info});
}

class SongsHeaderData {
  final String header;
  final String action;

  const SongsHeaderData({this.header, this.action});
}

class SongListItemData {

  final String albumName;
  final String name;
  final String image;
  final String explicitIcon;
  final String counter;

  const SongListItemData({this.albumName, this.name, this.image, this.explicitIcon, this.counter});
}

class AlbumData {

  final String title;
  final String description;
  final String image;

  const AlbumData({this.title, this.description, this.image});
}
