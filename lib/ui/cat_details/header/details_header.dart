import 'package:flutter_learning/models/cat.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:flutter_learning/ui/cat_details/header/header_bg_img.dart';

class CatDetailsHeader extends StatefulWidget {
  final Cat cat;
  final Object avatarTag;

  CatDetailsHeader(
    this.cat, {
    @required this.avatarTag,
  });
  @override
  CatDetailsHeaderState createState() => new CatDetailsHeaderState();
}

class CatDetailsHeaderState extends State<CatDetailsHeader> {
  static const BG_IMG = 'images/bgIMG.jpeg';

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var textTheme = theme.textTheme;
    var screenWidth = MediaQuery.of(context).size.width;
    var diagonalCutBG = new DiagonallyCutBG(
      new Image.asset(
        BG_IMG,
        width: screenWidth,
        height: 280.0,
        fit: BoxFit.cover,
      ),
      color: const Color(0xBB42A5F5),
    );

    var avatar = new Hero(
      tag: widget.avatarTag,
      child: new CircleAvatar(
        backgroundImage: new NetworkImage(widget.cat.avatarURL),
        radius: 75.0,
      ),
    );
    var likeinfo = new Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          new Icon(
            Icons.thumb_up,
            color: Colors.white,
            size: 16.0,
          ),
          new Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: new Text(
              widget.cat.likecount.toString(),
              style: textTheme.subtitle1.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );

    var actionButtons = new Padding(
      padding: const EdgeInsets.only(
        top: 16.0,
        left: 16.0,
        right: 16.0,
      ),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          new ClipRRect(
            borderRadius: new BorderRadius.circular(30.0),
            child: new MaterialButton(
              minWidth: 140.0,
              color: Colors.green, //theme.accentColor,
              textColor: Colors.white,
              onPressed: () async => {},
              child: new Text("Adopt Me"),
            ),
          ),
          new ClipRRect(
            borderRadius: new BorderRadius.circular(30.0),
            child: new MaterialButton(
              minWidth: 140.0,
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () async => {},
              child: new Text("Like"),
            ),
          ),
        ],
      ),
    );
    return new Stack(
      children: [
        diagonalCutBG,
        new Align(
          alignment: FractionalOffset.bottomCenter,
          heightFactor: 1.4,
          child: new Column(
            children: [
              avatar,
              likeinfo,
              actionButtons,
            ],
          ),
        ),
        new Positioned(
          top: 26.0,
          left: 5.0,
          child: new BackButton(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
