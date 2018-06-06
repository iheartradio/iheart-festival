import 'package:flutter/material.dart';



class FeedFilterItem extends StatelessWidget {

  final String text;
  final Color color;

  FeedFilterItem(this.text, this.color);

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
      child: RawMaterialButton(
        fillColor: color,
        elevation: 0.0,
        highlightElevation: 0.0,
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        constraints: const BoxConstraints(minWidth: 96.0),
        child: Text(text, style: Theme.of(context).textTheme.button.copyWith(color: Colors.white),),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(40.0))
        ),
        onPressed: (){},
      ),
    );
  }

}