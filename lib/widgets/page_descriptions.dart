import 'package:flutter/cupertino.dart';

class PageDescriptions extends StatelessWidget {

  String name1 = 'Skin List';
  String name2 = 'Skin Previewer';
  String name3 = 'Skin Decompiler';
  String name4 = 'Skin Compiler';
  String name5 = 'Skin Updater';
  String name6 = 'Skin Packager';
  String name7 = 'Skin Repackager';
  String name8 = 'Skin Extractor';

  String desc1 = "View a catalogue of downloaded SN skins on your device. Also allows you to automatically install skins into Stick Nodes, safely swapping out the currently installed skin.";
  String desc2 = "Get a rough, but quick, preview of how a skin will look once applied to Stick Nodes.";
  String desc3 = "Split skins into individual images for easier, and more precise, editing.";
  String desc4 = "Recompile previously decompiled skins back into fully functional skins.";
  String desc5 = "Quickly make outdated skins compatible with new versions of Stick Nodes.";
  String desc6 = "Package skins into neat zip files that can have a name, description, author, icon, and checksum.";
  String desc7 = "Edit previously packaged skin zip files.";
  String desc8 = "Extract the raw, vanilla texture atlases from an installation of Stick Nodes.";


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(child: DescRow(name1, desc1),),
          Flexible(child: DescRow(name2, desc2),),
          Flexible(child: DescRow(name3, desc3),),
          Flexible(child: DescRow(name4, desc4),),
          Flexible(child: DescRow(name5, desc5),),
          Flexible(child: DescRow(name6, desc6),),
          Flexible(child: DescRow(name7, desc7),),
          Flexible(child: DescRow(name8, desc8),),
        ],
      ),
    );
  }
}

class DescRow extends StatelessWidget {

  String name;
  String desc;

  DescRow(name, desc) {
    this.name = name;
    this.desc = desc;
  }

  Widget build(BuildContext context) {
    return Text(name + " - " + desc, textAlign: TextAlign.left,);
  }
}