import 'package:flutter/material.dart';
import 'package:iheart_festival/qr/ActivationListItem.dart';
import 'package:iheart_festival/qr/QRDate.dart';
import 'package:iheart_festival/qr/QREmptyItem.dart';
import 'package:iheart_festival/qr/QRMiddleItem.dart';
import 'package:iheart_festival/qr/QRTicketItem.dart';
import 'package:iheart_festival/qr/QRViewModel.dart';




class QRPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _QRPageState();

}

class _QRPageState extends State<QRPage> {

  QRViewModel model;

  @override
  void initState() {
    model = QRViewModel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _buildEmptyState(context);
  }

  Widget _buildEmptyState(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: model.testData.length,
        itemBuilder: (context, index) {
          if (model.testData[index] is EmptyQRCode) {
            return QREmptyItem();
          } else if (model.testData[index] is Activation) {
            return ActivationListItem(model.testData[index]);
          } else if (model.testData[index] is QRMiddleItemData) {
            return QRMiddleItem();
          } else if (model.testData[index] is QRTicketItemData) {
            return QRTicketItem();
          }
        },
      ),
    );
  }
}