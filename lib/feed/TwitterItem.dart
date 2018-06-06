import 'package:flutter/material.dart';
import 'package:iheart_festival/common/Gradients.dart';
import 'package:iheart_festival/feed/FeedData.dart';

class TwitterItem extends StatelessWidget {

  final TwitterData data;

  TwitterItem(this.data);

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: new Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: new SizedBox(
                    child: Image(
                  image: AssetImage(data.profileImage),
                  width: 56.0,
                )),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        data.title,
                        style: Theme.of(context).textTheme.title,
                      ),
                      new Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: new SizedBox(
                          child: Image(
                            image: AssetImage("twitter-verified.png"),
                          ),
                          width: 16.0,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    data.subtitle,
                    style: Theme
                        .of(context)
                        .textTheme
                        .body1
                        .copyWith(color: Colors.black38),
                  ),
                  new Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      data.body,
                      style: Theme.of(context).textTheme.body2,
                      maxLines: 2,
                      softWrap: true,
                    ),
                  ),
                  SizedBox(
                    child: Image(
                      image: AssetImage(data.bodyImage),
                    ),
                    width: 250.0,
                  ),
                  SizedBox(height: 7.0,),
                  new Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      children: <Widget>[
                        new SizedBox(
                          child: Image(image: AssetImage("twitter_comment.png"),),
                          width: 16.0,
                        ),
                        SizedBox(width: 4.0,),
                        Text(data.chatNum, style: Theme.of(context).textTheme.body1.copyWith(color: RED),),
                        SizedBox(width: 32.0,),
                        new SizedBox(
                          child: Image(image: AssetImage("twitter_retweet.png"),),
                          width: 16.0,
                        ),
                        SizedBox(width: 4.0,),
                        Text(data.retweetNum, style: Theme.of(context).textTheme.body1.copyWith(color: RED),),
                        SizedBox(width: 32.0,),
                        Icon(Icons.favorite_border, color: RED, size: 16.0,),
                        SizedBox(width: 4.0,),
                        Text(data.favorites, style: Theme.of(context).textTheme.body1.copyWith(color: RED),),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 8.0,),
          Divider(),
          SizedBox(height: 16.0,)
        ],
      ),
    );
  }
}
