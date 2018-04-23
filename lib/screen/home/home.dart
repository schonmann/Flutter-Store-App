import 'package:flutter/material.dart';
import 'package:my_store/screen/home/category_grid.dart';
import 'package:my_store/screen/home/drawer.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  final String title = "Home";

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      drawer: new AppDrawer(),
      body: new AppCategoryGrid(),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {},
        tooltip: 'Search',
        child: new Icon(Icons.search),
      ),
    );
  }
}
