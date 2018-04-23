import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key key}) : super(key: key);

  final String title = "Profile";

  @override
  State createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Container(
            padding: new EdgeInsets.symmetric(horizontal: 0.0, vertical: 50.0),
            child: new Center(
              child: new Hero(
                tag: "profile-pic",
                child: new CircleAvatar(
                  backgroundImage: new NetworkImage(
                    "https://static1.squarespace"
                        ".com/static/528252b7e4b0"
                        "0150d03a4848/59a2354eebbd"
                        "1a0623e0cefe/59a2359f6a49"
                        "631dd5192339/150380278967"
                        "4/RickAndMorty_RickHappy1"
                        "500.png?format=300w",
                  ),
                  maxRadius: 70.0,
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {},
        tooltip: 'Save',
        child: new Icon(Icons.save),
      ),
    );
  }
}
