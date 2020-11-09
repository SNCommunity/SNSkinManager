import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Uh, I started on this. I don't know if it's necessary though.

class CustomListTile extends StatelessWidget {
  IconData icon;
  String title;
  String route;
  dynamic args;

  CustomListTile(String title, IconData icon, {String route, args}) {
    this.icon = icon;
    this.title = title;
    this.route = route;
    this.args = args;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        splashColor: Colors.blueAccent,
        onTap: () {
          if (route != null) { Navigator.of(context).pushNamed(route, arguments: args);}
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(icon),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(title, style: TextStyle(
                    fontSize: 16.0
                  )),
                ),
              ]
            ),
            Icon(Icons.arrow_right)
          ]
        ),
      ),
    );
  }
}