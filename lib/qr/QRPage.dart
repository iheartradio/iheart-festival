import 'package:flutter/material.dart';
import 'package:iheart_festival/qr/QREmptyItem.dart';




class QRPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _QRPageState();

}

class _QRPageState extends State<QRPage> {

  @override
  Widget build(BuildContext context) {
    return _buildEmptyState(context);
  }

  Widget _buildEmptyState(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          QREmptyItem()
        ],
      ),
    );
  }
}