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
    "https://cps-static.rovicorp.com/3/JPG_400/MI0004/057/MI0004057529.jpg?partner=allrovi.com",
    true),
  ArtistScheduleData(
      "11:20AM",
      "Mariah Carey",
      "Pop",
      "https://cps-static.rovicorp.com/3/JPG_400/MI0004/057/MI0004057529.jpg?partner=allrovi.com",
      true),
  ArtistScheduleData(
      "11:45AM",
      "Jason Aldean",
      "Pop, Synth Pop",
      "https://cps-static.rovicorp.com/3/JPG_400/MI0004/057/MI0004057529.jpg?partner=allrovi.com",
      true),
  ArtistScheduleData(
      "12:05PM",
      "Sam Smith",
      "Pop, Synth Pop",
      "https://cps-static.rovicorp.com/3/JPG_400/MI0004/057/MI0004057529.jpg?partner=allrovi.com",
      true),
  ArtistScheduleData(
      "12:30PM",
      "Panic! At The Disco",
      "Pop, Synth Pop",
      "https://cps-static.rovicorp.com/3/JPG_400/MI0004/057/MI0004057529.jpg?partner=allrovi.com",
      true),
  ArtistScheduleData(
      "1PM",
      "Kygo",
      "Dance, Electronic",
      "https://cps-static.rovicorp.com/3/JPG_400/MI0004/057/MI0004057529.jpg?partner=allrovi.com",
      true),
  ArtistScheduleData(
      "1:25PM",
      "Logic",
      "Pop, Synth Pop",
      "https://cps-static.rovicorp.com/3/JPG_400/MI0004/057/MI0004057529.jpg?partner=allrovi.com",
      true),
  ArtistScheduleData(
      "2PM",
      "Rae Sreemurd",
      "Pop, Synth Pop",
      "https://cps-static.rovicorp.com/3/JPG_400/MI0004/057/MI0004057529.jpg?partner=allrovi.com",
      true),
];