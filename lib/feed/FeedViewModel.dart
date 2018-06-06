import 'package:iheart_festival/feed/FeedData.dart';



class FeedViewModel {

  final List<TwitterData> data = _TWITTER_DATA;

}


List<TwitterData> _TWITTER_DATA = [
  TwitterData(
    title: "iHeartRadio Festival",
    subtitle: "@iHeartFestival \u2022 3m",
    body: "Vegas are you ready? Meet 2018 \ndaytime state lineup! #iHeartDayStage \ntickets go on sale this Thursday!",
    profileImage: "MusicFest-logo.png",
    bodyImage: "feed-img01.png",
    chatNum: "8",
    retweetNum: "31",
    favorites: "77"
  ),
  TwitterData(
    title: "iHeartRadio",
    subtitle: "@iHeartRadio \u2022 4h",
    body: "Who do you want to see perform \nat the 2018 #iHeartFestival? \n Find out tomorrow at 9am ET / \n6am PT!",
    profileImage: "profile-ihr.png",
    bodyImage: "feed-img02.png",
    chatNum: "1",
    retweetNum: "143",
    favorites: "254"
  ),
  TwitterData(
    title: "iHeartRadio Festival",
    subtitle: "@iHeartFestival \u2022 13h",
    body: "TOMORROW, then \n#iHeartFestival lineup \nannouncement. Are you read?",
    profileImage: "MusicFest-logo.png",
    bodyImage: "feed-img03.png",
    chatNum: "21",
    retweetNum: "529",
    favorites: "351"
  )
];