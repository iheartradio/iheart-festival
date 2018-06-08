import 'dart:async';

import 'package:iheart_festival/LocalInfoItemData.dart';
import 'package:iheart_festival/schedule/ListItem.dart';
import 'package:iheart_festival/schedule/ScheduleData.dart';
import 'package:rxdart/rxdart.dart';

class ScheduleViewModel {

  List<Object> _items;
  final BehaviorSubject<List<Object>> _subject = BehaviorSubject<List<Object>>(seedValue: List());

  ScheduleViewModel(List<Object> items) {
    _items = items;
   _subject.add(_items);
  }

  void favorite(int index) {
   ArtistScheduleData item = (_items[index] as ArtistScheduleData);
   item.isFavorited = !item.isFavorited;
   _subject.add(_items);
  }

  Stream<List<Object>> dataStream() {
   return _subject.stream;
  }

}

List<Object> MOCK_DATA_FRI = [

 LocalInfoItemData("09/22", "Daytime Stage", "Las Vegas Festival Grounds"),

 InfoData("4PM", "Doors open"),

 ArtistScheduleData(
    "11AM",
    "Jack White",
    "Rock",
    "https://i.guim.co.uk/img/media/9c6ab39498a2c0a73c513da4ff164bdc6f7eaf48/0_221_8688_5213/master/8688.jpg?w=300&q=55&auto=format&usm=12&fit=max&s=aa0522c3627ad6851f457a37341fe6e4",
    true),
  ArtistScheduleData(
      "11:20AM",
      "Mariah Carey",
      "Pop",
      "https://pbs.twimg.com/profile_images/990953990509744128/WOc4FXTv_400x400.jpg",
      false),
  ArtistScheduleData(
      "11:45AM",
      "Jason Aldean",
      "Pop, Synth Pop",
      "https://images-na.ssl-images-amazon.com/images/I/81QWpw3ZrhL._SY355_.jpg",
      false),
  ArtistScheduleData(
      "12:05PM",
      "Sam Smith",
      "Pop, Synth Pop",
      "https://yt3.ggpht.com/a-/ACSszfFVnkUC818kMejvOeAQAgDzlRZKEF1d3oZwKQ=s900-mo-c-c0xffffffff-rj-k-no",
      false),
  ArtistScheduleData(
      "12:30PM",
      "Panic! At The Disco",
      "Pop, Synth Pop",
      "http://ticketcrusader.com/wp-content/uploads/2016/09/panic-at-th-disco.jpg",
      true),
  ArtistScheduleData(
      "1PM",
      "Kygo",
      "Dance, Electronic",
      "https://static.stereogum.com/uploads/2016/05/Kygo-640x427.jpg",
      true),
  ArtistScheduleData(
      "1:25PM",
      "Logic",
      "Pop, Synth Pop",
      "https://specials-images.forbesimg.com/imageserve/586c28c04bbe6f1f20ea2ae3/416x416.jpg?background=000000&cropX1=563&cropX2=1219&cropY1=15&cropY2=671",
      true),
  ArtistScheduleData(
      "2PM",
      "Rae Sreemurd",
      "Pop, Synth Pop",
      "http://www.mixmag.net/assets/uploads/images/_columns2/rae-sremmurd_wl1qegnkattz.jpg",
      true),
];

List<ListItem> MOCK_DATA_SAT_AM = [

 LocalInfoItemData("09/23", "Daytime Stage", "Las Vegas Festival Grounds"),

 InfoData("10AM", "Doors open"),

 ArtistScheduleData(
     "11AM",
     "Dua Lipa",
     "Rock",
     "http://ksassets.timeincuk.net/wp/uploads/sites/55/2018/01/dua-lipa-new-rules-christmas-920x584.jpg",
     true),
 ArtistScheduleData(
     "11:20AM",
     "Logic",
     "Pop",
     "https://specials-images.forbesimg.com/imageserve/586c28c04bbe6f1f20ea2ae3/416x416.jpg?background=000000&cropX1=563&cropX2=1219&cropY1=15&cropY2=671",
     false),
 ArtistScheduleData(
     "11:45AM",
     "5 Seconds of Summer",
     "Pop, Synth Pop",
     "https://www.billboard.com/files/styles/article_main_image/public/media/5sos-5-seconds-of-summer-aria-awards-2014-billboard-650.jpg",
     false),
 ArtistScheduleData(
     "12:05PM",
     "Lil Uzi Vert",
     "Pop, Synth Pop",
     "https://sslb.ulximg.com/image/405x405/artist/1464961822_6e757496657e78e0a893e0c8a3753afd.jpg/8b9b3e01b6e633fbd3974385e88c2f50/1464961822_bfdbd37bf6376d367e672d59e2b22b11.jpg",
     false),
 ArtistScheduleData(
     "12:30PM",
     "Dustin Lynch",
     "Pop, Synth Pop",
     "https://www.mu.iastate.edu/media/cms/Dustin_2F2E1B877546B.jpg",
     true),
 ArtistScheduleData(
     "1PM",
     "Bazzi",
     "Dance, Electronic",
     "https://www.aclfestival.com/wp-www-aclfestival-com/wp/wp-content/uploads/2018/04/bazzi-approved-photo-copy-2-7869c267.jpg",
     true),
 ArtistScheduleData(
     "1:25PM",
     "Belly",
     "Pop, Synth Pop",
     "https://exclaim.ca/images/Belly.jpg",
     true),
 ArtistScheduleData(
     "2PM",
     "Bobby Bones & the \nRaging Idiots",
     "Pop, Synth Pop",
     "https://i.axs.com/2018/01/bobby-bones-the-raging-idiots_01-09-18_7_5a55500c87ede.jpg",
     true),
 ArtistScheduleData(
     "2PM",
     "Greta Van Fleet",
     "Pop, Synth Pop",
     "https://s3-us-west-1.amazonaws.com/prohbtd/uploads/public/5a9/9fc/6a8/5a99fc6a82d7a285875737.jpg",
     true)
];


List<ListItem> MOCK_DATA_SAT_PM = [

 LocalInfoItemData("09/23", "Main Stage", "iHeartRadio Arena"),

 InfoData("6PM", "Doors open"),

 ArtistScheduleData(
     "11AM",
     "Justin Timberlake",
     "Rock",
     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYqWGUQYinD4cDlzM75ePI191zVpOQRQAg_FECKr9sbe4kkKum",
     true),
 ArtistScheduleData(
     "11:20AM",
     "Carrie Underwood",
     "Pop",
     "http://cdn02.cdn.justjared.com/wp-content/uploads/headlines/2017/11/carrie-underwood-hospital-wrist-break.jpg",
     false),
 ArtistScheduleData(
     "11:45AM",
     "Imagine Dragons",
     "Pop, Synth Pop",
     "https://s1.ticketm.net/tm/en-us/dam/a/443/c27ce107-a884-4ebe-be08-2d192a775443_635551_CUSTOM.jpg",
     false),
 ArtistScheduleData(
     "12:05PM",
     "Luke Bryan",
     "Pop, Synth Pop",
     "https://img.wennermedia.com/article-leads-horizontal/rs-208487-strip-it-downCROP.jpg",
     false),
 ArtistScheduleData(
     "1PM",
     "Lynyrd Skynyrd",
     "Dance, Electronic",
     "http://e-cdn-images.deezer.com/images/artist/85fe4de5ff89ed30127ade2d231e5cbb/200x200-000000-80-0-0.jpg",
     true),
 ArtistScheduleData(
     "1:25PM",
     "Kelly Clarkson",
     "Pop, Synth Pop",
     "https://www.dickclark.com/wp-content/uploads/2018/04/Kelly-Clarkson-Host-BBMAs-1919x1079.png",
     true),
 ArtistScheduleData(
     "2PM",
     "Shawn Mendes",
     "Pop, Synth Pop",
     "https://www.shawnsignature.com/on/demandware.static/-/Sites-ShawnMendes-Library/default/dw68b19d57/images/homepage/topbanner/SM-D-HPM-ShawnMendes-pic_1x.jpg",
     true),
];