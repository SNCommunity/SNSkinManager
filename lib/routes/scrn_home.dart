import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sn_skin_manager/widgets/custom_list_tile.dart';
import 'package:sn_skin_manager/widgets/page_descriptions.dart';

import '../main.dart';

class HomePage extends StatelessWidget {
  final String title = 'SN Skin Manager Home';
  final String header = "Welcome to SN Skin Manager!";
  final String description = "This app aims to make Stick Nodes skin usage and creation much easier. Get started by tapping the sidebar menu icon in the top left corner. Below is a quick description of each part of this app.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: <Color>[
                    Colors.lightBlue,
                    Colors.lightBlueAccent
                  ])
                ),
                  child: Text("Skin Manager " + MyApp.version, style: TextStyle(color: Colors.white, fontSize: 20.0))
              ),
              CustomListTile("Skin List", Icons.list, route: '/list'),
              CustomListTile("Skin Previewer", Icons.preview, route: '/preview'),
              CustomListTile("Skin Decompiler", Icons.unarchive, route: '/decompile'),
              CustomListTile("Skin Compiler", Icons.archive, route: '/compile'),
              CustomListTile("Skin Updater", Icons.update, route: '/update'),
              CustomListTile("Skin Packager", Icons.inventory, route: '/package'),
              CustomListTile("Skin Repackager", Icons.edit, route: '/repackage'),
              CustomListTile("Skin Extractor", Icons.auto_fix_high, route: '/extract'),
              CustomListTile("Credits", Icons.person, route: '/credits'),
            ],
          )
      ),
      appBar: AppBar(
        title: Text(title, style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.lightBlueAccent,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(header, style: TextStyle(fontSize: 30.0, color: Colors.white), textAlign: TextAlign.center),
                ),
                Divider(thickness: 1.0, color: Colors.white30),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(
                    description,
                    style: TextStyle(color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(child: PageDescriptions()),
          )
        ],
      ),
    );
  }
}