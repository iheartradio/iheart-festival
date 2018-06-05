import 'package:flutter/material.dart';
import 'package:iheart_festival/qr/QRViewModel.dart';


class QRViewModelProvider extends InheritedWidget {

  final QRViewModel billViewModel;

  QRViewModelProvider({
    Key key,
    QRViewModel billViewModel,
    Widget child,
  })  : billViewModel = billViewModel ?? QRViewModel(),
        super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static QRViewModel of(BuildContext context) =>
      (context.inheritFromWidgetOfExactType(QRViewModelProvider) as QRViewModelProvider)
          .billViewModel;

}