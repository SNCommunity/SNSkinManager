import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../main.dart';

class CreditsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Credits", style: TextStyle(color: Colors.white)),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text('Credits', style: TextStyle(fontSize: 30.0)),
              Divider(thickness: 2.0,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                    child: Text('Programmer: Vince the Animator'),
              ),
              Divider(),
              new Center(
                child: new InkWell(child: new Text('Check out the GitHub repository', style: new TextStyle(color: Colors.blue, decoration: TextDecoration.underline),), onTap: () => {_launchURL(MyApp.repo)})
              ),
            ],
          ),
        )
    );
  }

  void _launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

}