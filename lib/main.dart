import 'package:flutter/material.dart';
import 'package:sn_skin_manager/route_generator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  static final String version = 'v0.2.0';
  static final String repo = "https://github.com/sncommunity/sn_skin_manager";

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SN Skin Manager',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
