import 'package:flutter/material.dart';
import 'package:iheart_festival/qr/QRViewModelProvider.dart';



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
        new SizedBox(
          height: 50.0,
          child: Image(image: AssetImage("image_ticket.png"))
        ),
        SizedBox(height: 12.0,),
        Text(
          "No QR code yet?",
          style: Theme.of(context).textTheme.headline,
        ),
        SizedBox(height: 10.0,),
        Text(
          "Enter code of buy tickets first.",
          style: Theme.of(context).textTheme.body2,
        ),
        SizedBox(height: 42.0,),
        new SizedBox(
          width: 300.0,
          child: TextField(
            controller: _editTextController,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              hintText: "Copy/paste code from email",
              hintStyle: TextStyle(

              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 10.0
              ),
              border: OutlineInputBorder()
            ),
          ),
        ),
        new Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new SizedBox(
                child: Divider(),
                width: 60.0,
              ),
              new Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text("OR"),
              ),
              new SizedBox(
                child: Divider(),
                width: 60.0,
              ),
            ],
          ),
        ),
        MaterialButton(
          color: const Color(0xFFFF7676),
          child: Text("Buy Tickets", style: TextStyle(color: Colors.white70),),
          splashColor: Color(0xFFFFDBD0),
          onPressed: () {
            QRViewModelProvider.of(context).purchaseTicket();
          },
        )
      ],
    );
  }

}