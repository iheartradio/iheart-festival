import 'package:iheart_festival/schedule/ListItem.dart';

class LocalInfoItemData implements ListItem {

  final String date;
  final String stage;
  final String venue;

  const LocalInfoItemData(this.date, this.stage, this.venue);
}