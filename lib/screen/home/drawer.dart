import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_store/screen/about/about.dart';
import 'package:my_store/screen/profile/profile.dart';
import 'package:my_store/screen/recommendations/recommendations.dart';
import 'package:my_store/screen/shop/shop.dart';

class AppDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
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
                            "https://static1.squarespace"
                                ".com/static/528252b7e4b0"
                                "0150d03a4848/59a2354eebbd"
                                "1a0623e0cefe/59a2359f6a49"
                                "631dd5192339/150380278967"
                                "4/RickAndMorty_RickHappy1"
                                "500.png?format=300w",
                          ),
                          maxRadius: 40.0,
                        ),
                      ),
                      new Text(
                        "Rick Sanchez",
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
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => new ShopPage(),
              ));
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
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => new ProfilePage(),
              ));
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
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => new RecommendationsPage(),
              ));
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
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => new HelpPage(),
              ));
            },
          ),
        ],
      ),
    );
  }
}