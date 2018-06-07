
import 'package:iheart_festival/music/data/AboutData.dart';
import 'package:iheart_festival/music/data/OverviewData.dart';

class MusicViewModel {

  final List<Object> items = _ARTIST_DATA;
  final List<Object> aboutItems = _ABOUT_DATA;
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
      header: "Albums",
      action: "See All"
  ),

  AlbumData(
      title: "IDGAF",
      description: "May 2018 \u2022 5 songs",
      image: "album_dualipa_IDGAF.png"),

  AlbumData(
      title: "IDGAF",
      description: "Feb 2018 \u2022 4 songs",
      image: "album_dualipa_idgafremixes.png"),

  AlbumData(
      title: "IDGAF",
      description: "Dec 2017 2018 \u2022 4 songs",
      image: "album_dualipa_liveacoustic.png"),

  AlbumData(
      title: "IDGAF",
      description: "Nov 2017 \u2022 1 song",
      image: "album_dualipa_newrules.png")

];

const List<String> bioImages = [
  "dualipa_001.png",
  "dualipa_002.png",
  "dualipa_003.png",
  "dualipa_004.png",
  "dualipa_005.png",
  "dualipa_006.png",
];

const List<Object> _ABOUT_DATA = [

  SimpleHeaderData(
    header: "Biography"
  ),

  CarouselData(
    images: bioImages
  ),
  
  BiographyData(
      bio: ""
  ),

  ReadMoreData(
    header: "Read More"
  ),

  SimpleHeaderData(
    header: "News"
  ),

  NewsItemData(
    image: "dualipa-news-001.png",
    headline: "Calvin Harris & Dua Lipa Bring The Summer Aesthetics In 'One Kiss' Video",
    author: "By James Dinh",
    date: "May 3rd 2018"
  ),

  NewsItemData(
      image: "dualipa-news-002.png",
      headline: "Katy Perry Interviews Dua Lipa for 'V Magazine': 3 Fun Facts We Learned",
      author: "By Taylor Smith",
      date: "April 13th 2018"
  ),

  NewsItemData(
      image: "dualipa-news-003.png",
      headline: "Calvin Harris & Dua Lipa Bring The Summer Aesthetics In 'One Kiss' (VIDEO)",
      author: "By Nicole Mastrogiannis",
      date: "April 6 2018"
  )
];