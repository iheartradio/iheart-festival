import 'package:flutter/material.dart';
import 'package:iheart_festival/qr/ActivationListItem.dart';
import 'package:iheart_festival/qr/QRDate.dart';
import 'package:iheart_festival/qr/QREmptyItem.dart';
import 'package:iheart_festival/qr/QRMiddleItem.dart';
import 'package:iheart_festival/qr/QRTicketItem.dart';
import 'package:iheart_festival/qr/QRViewModel.dart';
import 'package:iheart_festival/qr/QRViewModelProvider.dart';




class QRPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _QRPageState();

}

class _QRPageState extends State<QRPage> {

  GlobalKey<AnimatedListState> _listKey;

  @override
  void initState() {
    _listKey = new GlobalKey<AnimatedListState>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _buildEmptyState(context);
  }

//  Widget _buildEmptyState(BuildContext context) {
//    // QRViewModelProvider.of(context).data()
//    return AnimatedList(
//      key: _listKey,
//      initialItemCount: 3,
//      itemBuilder: (context, index, animation) {
//        return FadeTransition(
//          opacity: animation,
//          child: Text("ANIMATION!!!!"),
//        );
//      },
//    );
//  }

  Widget _buildEmptyState(BuildContext context) {
    return Scaffold(
      body: new StreamBuilder<List<Object>>(
        stream: QRViewModelProvider.of(context).data(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return CircularProgressIndicator();
          }
          return AnimatedList(
            key: _listKey,
            initialItemCount: snapshot.data.length,
            itemBuilder: (context, index, animation) {
              if (snapshot.data[index] is EmptyQRCode) {
                return QREmptyItem(animation);
              } else if (snapshot.data[index] is Activation) {
                return ActivationListItem(snapshot.data[index]);
              } else if (snapshot.data[index] is QRMiddleItemData) {
                return QRMiddleItem();
              } else if (snapshot.data[index] is QRTicketItemData) {
                return QRTicketItem(animation);
              }
            },
          );
        },
      ),
    );
  }
}