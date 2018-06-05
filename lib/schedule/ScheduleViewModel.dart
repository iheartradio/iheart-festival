import 'package:iheart_festival/LocalInfoItemData.dart';
import 'package:iheart_festival/schedule/ListItem.dart';
import 'package:iheart_festival/schedule/ScheduleData.dart';

class ScheduleViewModel {

  final List<ListItem> items = MOCK_DATA;
}

const List<ListItem> MOCK_DATA = [

 LocalInfoItemData("09/22", "Daytime Stage", "Las Vegas Festival Grounds"),

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