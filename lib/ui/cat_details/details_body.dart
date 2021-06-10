import 'package:flutter_learning/models/cat.dart';
import 'package:flutter/material.dart';

class CatDetailsBody extends StatelessWidget {
  final Cat cat;

  CatDetailsBody(
    this.cat,
  );

  createIconBadge(IconData iconData, Color color) {
    return new Padding(
      padding: const EdgeInsets.only(
        top: 16.0,
        right: 10.0,
      ),
      child: new CircleAvatar(
        backgroundColor: color,
        child: new Icon(
          iconData,
          color: Colors.white,
          size: 16.0,
        ),
        radius: 16.0,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var textTheme = theme.textTheme;
    var loactionInfo = new Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        new Icon(
          Icons.place,
          color: Colors.white,
          size: 16.0,
        ),
        new Padding(
          padding: const EdgeInsets.only(left: 6.00),
          child: new Text(
            cat.location,
            style: textTheme.subtitle1
                .copyWith(color: Colors.cyan, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
    return new Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        new Text(
          cat.name,
          style: textTheme.headline3.copyWith(color: Colors.white),
        ),
        new Padding(
          padding: const EdgeInsets.only(top: 6.0),
          child: loactionInfo,
        ),
        new Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: new Text(
            cat.description,
            style: textTheme.bodyText1.copyWith(
              color: Colors.black,
              fontSize: 25.0,
            ),
          ),
        ),
        new Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              createIconBadge(Icons.share, Colors.blue),
              createIconBadge(Icons.email, Colors.red),
              createIconBadge(Icons.phone, Colors.green),
            ],
          ),
        ),
      ],
    );
  }
}
