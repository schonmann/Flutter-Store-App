import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecommendationsPage extends StatefulWidget {
  RecommendationsPage({Key key}) : super(key: key);

  final String title = "Recommendations";

  @override
  State createState() {
    return _RecommendationsPageState();
  }
}

class _RecommendationsPageState extends State<RecommendationsPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Text(
            "Recommendations page works!"
        ),
      ),
    );
  }
}

