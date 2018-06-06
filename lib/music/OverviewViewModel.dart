
import 'package:iheart_festival/music/data/OverviewData.dart';

class OverviewViewModel {

  final List<Object> items = _ARTIST_DATA;
}

const List<Object> _ARTIST_DATA = [

  LatestReleaseData(
      title: "IDGAF",
      description: "May 2018 \u2022 5 songs",
      image: "album_dualipa_IDGAF.png"),

  SongsHeaderData(
    header: "Top Songs",
    action: "See All"
  ),

  SongListItemData(
    albumName: "IDGAF",
    name: "Dua Lipa",
    image: "topsong_dualipa_album_blue.png",
    explicitIcon: "icon_explicit.png",
    counter: "1"
  ),
  SongListItemData(
      albumName: "New Rules",
      name: "New Rules Acoustic",
      image: "album_dualipa_liveacoustic.png",
      explicitIcon: "icon_explicit.png",
      counter: "2"
  ),
  SongListItemData(
      albumName: "Be The One",
      name: "Dua Lipa",
      image: "topsong_dualipa_album_blue.png",
      explicitIcon: "icon_explicit.png",
      counter: "3"
  ),
  SongListItemData(
      albumName: "Blow your mind (Mwah)",
      name: "Blow your mind (Mwah)",
      image: "topsong_dualipa_album_blue.png",
      explicitIcon: "icon_explicit.png",
      counter: "4"
  ),
  SongListItemData(
      albumName: "Hotter Than Hell",
      name: "Dua Lipa",
      image: "topsong_dualipa_album_blue.png",
      explicitIcon: "icon_explicit.png",
      counter: "5"
  ),

  SongsHeaderData(
      header: "Top Songs",
      action: "See All"
  ),

  AlbumData(
      title: "IDGAF",
      description: "May 2018 \u2022 5 songs",
      image: "album_dualipa_IDGAF.png"),

  AlbumData(
      title: "IDGAF",
      description: "May 2018 \u2022 5 songs",
      image: "album_dualipa_IDGAF.png"),

  AlbumData(
      title: "IDGAF",
      description: "May 2018 \u2022 5 songs",
      image: "album_dualipa_IDGAF.png"),

  AlbumData(
      title: "IDGAF",
      description: "May 2018 \u2022 5 songs",
      image: "album_dualipa_IDGAF.png")

];