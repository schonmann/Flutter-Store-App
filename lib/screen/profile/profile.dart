import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_store/model/user.dart';
import 'package:my_store/session/session_manager.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key key}) : super(key: key);

  final String title = "Profile";

  @override
  State createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  User _user = new SessionManager().getCurrentUser();

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
                    _user.profilePictureUrl,
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
