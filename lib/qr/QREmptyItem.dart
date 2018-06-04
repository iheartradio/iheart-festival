import 'package:flutter/material.dart';



class QREmptyItem extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _QREmptyItem();

}

class _QREmptyItem extends State<QREmptyItem> {

  TextEditingController _editTextController;

  @override
  void initState() {
    _editTextController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(Icons.image),
        Text("No QR code yet?"),
        Text("Enter code of buy tickets first."),
        TextField(
          controller: _editTextController,
          decoration: InputDecoration(
            border: OutlineInputBorder()
          ),
        )
      ],
    );
  }

}