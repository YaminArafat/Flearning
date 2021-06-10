import 'package:flutter_learning/models/cat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/ui/cat_details/footer/footer_cattributes_tab.dart';
import 'package:flutter_learning/ui/cat_details/footer/footer_details_tab.dart';
import 'package:flutter_learning/ui/cat_details/footer/footer_pictures_tab.dart';

class CatDetailsFooter extends StatefulWidget {
  final Cat cat;

  CatDetailsFooter(
    this.cat,
  );
  @override
  CatDetailsFooterState createState() => new CatDetailsFooterState();
}

class CatDetailsFooterState extends State<CatDetailsFooter>
    with TickerProviderStateMixin {
  List<Tab> tabs;
  List<Widget> pages;
  TabController controller;

  @override
  initState() {
    super.initState();
    tabs = [
      new Tab(
        text: "Pictures",
      ),
      new Tab(
        text: "Details",
      ),
      new Tab(
        text: "Cattributes",
      ),
    ];
    pages = [
      new FooterPicTab(widget.cat),
      new FooterDetailsTab(widget.cat),
      new FooterCattributesTab(widget.cat),
    ];
    controller = new TabController(
      length: tabs.length,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.all(16.0),
      child: new Column(
        children: [
          new TabBar(
            tabs: tabs,
            controller: controller,
            indicatorColor: Colors.white,
          ),
          new SizedBox.fromSize(
            size: const Size.fromHeight(300.0),
            child: new TabBarView(
              children: pages,
              controller: controller,
            ),
          ),
        ],
      ),
    );
  }
}
