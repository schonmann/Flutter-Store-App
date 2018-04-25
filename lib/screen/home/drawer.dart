import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_store/model/user.dart';
import 'package:my_store/screen/about/about.dart';
import 'package:my_store/screen/profile/profile.dart';
import 'package:my_store/screen/recommendations/recommendations.dart';
import 'package:my_store/screen/shop/shop.dart';
import 'package:my_store/session/session_manager.dart';

class AppDrawer extends StatefulWidget {
  AppDrawer({Key key}) : super(key: key);

  @override
  State createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {

  final SessionManager _sessionManager = new SessionManager();

  User _user;

  @override
  Widget build(BuildContext context) {

    this._user = _sessionManager.getCurrentUser();

    return new Drawer(
      child: new ListView(
        children: <Widget>[
          new DrawerHeader(
            child: new Container(
              padding: new EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 20.0,
              ),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      new Hero(
                        tag: "profile-pic",
                        child: new CircleAvatar(
                          backgroundImage: new NetworkImage(
                            _user.profilePictureUrl
                          ),
                          maxRadius: 40.0,
                        ),
                      ),
                      new Text(
                        _user.username,
                        style: new TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            decoration: new BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
          ),
          ListTile(
            leading: new Icon(Icons.store),
            title: new Text(
              "Store",
              style: Theme.of(context).textTheme.subhead,
            ),
            subtitle: new Text("Find group buying deals you may like!"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                new MaterialPageRoute(
                  builder: (BuildContext context) => new ShopPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: new Icon(Icons.info),
            title: new Text(
              "My Profile",
              style: Theme.of(context).textTheme.subhead,
            ),
            subtitle: new Text("Billing info, general settings and more."),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                new MaterialPageRoute(
                  builder: (BuildContext context) => new ProfilePage(),
                ),
              );
            },
          ),
          ListTile(
            leading: new Icon(Icons.shopping_cart),
            title: new Text(
              "Shopping Cart",
              style: Theme.of(context).textTheme.subhead,
            ),
            subtitle: new Text("Shows the list of chosen products!"),
            onTap: () {},
          ),
          ListTile(
            leading: new Icon(Icons.thumb_up),
            title: new Text(
              "Recommendations",
              style: Theme.of(context).textTheme.subhead,
            ),
            subtitle: new Text("Products you may like!"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                new MaterialPageRoute(
                  builder: (BuildContext context) => new RecommendationsPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: new Icon(Icons.help),
            title: new Text(
              "Help",
              style: Theme.of(context).textTheme.subhead,
            ),
            subtitle: new Text("We may aid you :)"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                new MaterialPageRoute(
                  builder: (BuildContext context) => new HelpPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
