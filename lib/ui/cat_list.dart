import 'package:flutter/material.dart';
import 'package:flutter_learning/models/cat.dart';
import 'package:flutter_learning/services/api.dart';

class CatList extends StatefulWidget {
  @override
  _CatListState createState() => new _CatListState();
}

class _CatListState extends State<CatList> {
  List<Cat> _cats = [];
  void initState() {
    super.initState();
    _loadCats();
  }

  _loadCats() async {
    String fileData =
        await DefaultAssetBundle.of(context).loadString("assets/cats.json");
    for (Cat cat in CatAPI.allCatsFromJson(fileData)) {
      _cats.add(cat);
    }
    print(_cats.toString());
  }

  Widget _getAppTitle() {
    return new Text(
      'Cats',
      style: new TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        //fontFamily: 'Ubuntu',
        fontSize: 130.0,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.blue,
      body: _getAppTitle(),
    );
  }
}
