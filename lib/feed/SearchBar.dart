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
            Text(
              "Search Feed",
              style: Theme.of(context).textTheme.title.copyWith(color: Colors.grey[400], fontSize: 18.0),
            ),
//            Text("HOL"),
//            new Container(
//              height: 30.0,
//              width: 200.0,
//              child: TextField(
//                controller: editingController,
//                textAlign: TextAlign.center,
//                decoration: InputDecoration(
//                  hintText: "HINT",
//                  border: null,
//                ),
//              ),
//            )

//            TextField(
//              controller: editingController,
//              textAlign: TextAlign.left,
//              decoration: InputDecoration(
//                  hintText: "Search Feed"
//              ),
//            )
          ],
        ),
      ),
    );
  }

}