import 'package:flutter/material.dart';



class SearchBar extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {

  TextEditingController editingController;

  @override
  void initState() {
    editingController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.grey[100],
      child: SizedBox(
        height: 56.0,
        child: Row(
          children: <Widget>[
            new Padding(
              padding: const EdgeInsets.all(16.0),
              child: Icon(Icons.search, color: Colors.grey,),
            ),
//            new Center(
//              child: TextField(
//                controller: editingController,
//                textAlign: TextAlign.left,
//                decoration: InputDecoration(
//                    hintText: "Search Feed"
//                ),
//              ),
//            )
          ],
        ),
      ),
    );
  }

}