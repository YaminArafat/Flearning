import 'package:flutter/material.dart';
import 'package:flutter_learning/models/cat.dart';
import 'package:flutter_learning/services/api.dart';
import 'package:flutter_learning/ui/cat_details/details_page.dart';
import 'package:flutter_learning/utils/routes.dart';

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
    // for (Cat cat in CatAPI.allCatsFromJson(fileData)) {
    //   _cats.add(cat);
    // }
    // print(_cats.toString());
    setState(() {
      _cats = CatAPI.allCatsFromJson(fileData);
    });
  }

  navigateToCatDetails(Cat cat, Object avatarTag) {
    Navigator.of(context).push(new FadePageRoute(
      builder: (c) {
        return new CatDetailsPage(cat, avatarTag: avatarTag);
      },
      settings: new RouteSettings(),
    ));
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

  Future<Null> refresh() {
    _loadCats();
    return new Future<Null>.value();
  }

  Widget _buildCatItem(BuildContext context, int index) {
    Cat cat = _cats[index];
    return new Container(
      margin: const EdgeInsets.only(top: 5.0),
      child: new Card(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            new ListTile(
              onTap: () => navigateToCatDetails(cat, index),
              leading: new Hero(
                tag: index,
                child: new CircleAvatar(
                  backgroundImage: new NetworkImage(cat.avatarURL),
                ),
              ),
              title: new Text(
                cat.name,
                style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
              subtitle: new Text(cat.description),
              isThreeLine: false,
              dense: false,
            )
          ],
        ),
      ),
    );
  }

  Widget _getListView() {
    return new Flexible(
      child: new RefreshIndicator(
        child: new ListView.builder(
          itemBuilder: _buildCatItem,
          physics: const AlwaysScrollableScrollPhysics(),
          itemCount: _cats.length,
        ),
        onRefresh: refresh,
      ),
    );
  }

  Widget _buildBody() {
    return new Container(
      margin: const EdgeInsets.fromLTRB(
        8.0,
        56.0,
        8.0,
        0.0,
      ),
      child: new Column(
        children: [
          _getAppTitle(),
          _getListView(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.blue,
      body: _buildBody(),
    );
  }
}
