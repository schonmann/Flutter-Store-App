import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HelpPage extends StatelessWidget {

  final String title = "Help";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(this.title),
      ),
      body: new Center(
        child: new Text("Help!"),
      ),
    );
  }
}