import 'package:flutter/material.dart';
import 'package:iheart_festival/common/Gradients.dart';
import 'package:iheart_festival/qr/QRDate.dart';

class ActivationListItem extends StatelessWidget {
  final Activation activation;

  ActivationListItem(this.activation);

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Card(
        elevation: 4.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 100.0,
              child: new Stack(children: <Widget>[
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image(image: AssetImage("logo_mars.png")),
                  ),
                ),
                Positioned(
                  right: 0.0,
                  top: 18.0,
                  child: Container(
                    height: 32.0,
                    width: 88.0,
                    child: Center(
                        child: Text(
                      "NOT VISTED",
                      style: Theme
                          .of(context)
                          .textTheme
                          .caption
                          .copyWith(color: Colors.white),
                    )),
                    decoration: BoxDecoration(color: Colors.grey),
                  ),
                )
              ]),
            ),
            Container(
              decoration: BoxDecoration(gradient: LinearGradient(colors: PINK)),
              child: Stack(
                children: <Widget>[
                  Positioned(
                      right: 0.0,
                      top: 0.0,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: new Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "7 ft away",
                              style: Theme
                                  .of(context)
                                  .textTheme
                                  .caption
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 6.0,
                            ),
                            SizedBox(
                                height: 16.0,
                                child: Image(
                                    image:
                                        AssetImage("icon_direction_200.png"))),
                          ],
                        ),
                      )),
                  new Padding(
                    padding: const EdgeInsets.symmetric(vertical: 28.0),
                    child: new Stack(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Text(
                                "Mars",
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .title
                                    .copyWith(color: Colors.white),
                              ),
                            ),
                            SizedBox(height: 4.0,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Text(
                                "Get a 360-degree photo where you'll enter into an oversized pack of Caremel M&M's with the new Unsquared character",
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .subhead
                                    .copyWith(color: Colors.white),
                              ),
                            ),
                            SizedBox(height: 20.0)
                          ],
                        ),
                      ],
                    ),
                  ),
                  new Positioned(
                    bottom: 0.0,
                    left: 0.0,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SizedBox(
                          height: 18.0,
                          child: Image(
                            image: AssetImage("tag_free.png"),
                          )),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}