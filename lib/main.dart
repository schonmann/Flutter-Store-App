import 'package:flutter/material.dart';
import 'package:my_store/screen/home/home.dart';
import 'package:my_store/theme.dart' as Theme;

void main() => runApp(new App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var title = "My Flutter Store!";
    return new MaterialApp(
      title: title,
      home: new HomePage(),
      theme: Theme.AppTheme,
    );
  }
}