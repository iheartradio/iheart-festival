import 'dart:async';

import 'package:iheart_festival/qr/ActivationListItem.dart';
import 'package:iheart_festival/qr/QRDate.dart';
import 'package:rxdart/rxdart.dart';

class QRViewModel {

  final BehaviorSubject<List<Object>> _dataSubject = BehaviorSubject(seedValue: List());

  final List<Object> _testData = List();

  QRViewModel() {
    _testData.add(new EmptyQRCode());
    _testData.add(new QRMiddleItemData());
    _testData.addAll(MOCK_ACTIVATIONS);
    _dataSubject.add(_testData);
  }

  void purchaseTicket() {
    _testData.removeAt(0);
    _testData.insert(0, QRTicketItemData());
    _dataSubject.add(_testData);
  }

  Stream<Object> data() => _dataSubject.stream;

}



List<Object> MOCK_ACTIVATIONS = [
  Activation(
      title: "The CW",
      subtitle: "Visit Pop's Chock'lit Shippe to cool off with ice cream, snap a picture in a photo booth, and grab a Riverdale lunch box.",
      headerImage: "logo_cw.png",
      distance: "10 ft away",
      isVisited: true,
      isFree: false
  ),
  Activation(
      title: "Glade",
      subtitle: "Take selfies at swing sets and decorative foliage wall and hashtag #GladeSweepstakes for the chance to win tickets to the Saturday nighttime show.",
      headerImage: "logo_glade.png",
      distance: "20 ft away",
      isVisited: false,
      isFree: true
  ),
  Activation(
      title: "inkbox tattoos",
      subtitle: "Get a temporary tattoo",
      headerImage: "logo_inkbox.png",
      distance: "7 ft away",
      isVisited: true,
      isFree: false
  ),
  Activation(
      title: "Mars",
      subtitle: "Get a 360-degree photo where you'll enter into an oversized pack of Caremel M&M's with the new Unsquared character",
      headerImage: "logo_mars.png",
      distance: "7 ft away",
      isVisited: false,
      isFree: true
  ),
  Activation(
      title: "Office Depot",
      subtitle: "Win tickets to the Saturday FEstival by taking a picture at the office-themed social photobooth.",
      headerImage: "logo_office.png",
      distance: "32 ft away",
      isVisited: false,
      isFree: false
  ),
  Activation(
      title: "T-Mobile",
      subtitle: "Charge up at a T-Mobile charging stations.",
      headerImage: "logo_tmobile.png",
      distance: "41 ft away",
      isVisited: false,
      isFree: true
  ),
  Activation(
      title: "Taco Bell",
      subtitle: "Visit the \"hand out wall\" to sample the new Strawberry Poppin' Freeze drink.",
      headerImage: "logo_taco.png",
      distance: "85 ft away",
      isVisited: false,
      isFree: true
  )
];