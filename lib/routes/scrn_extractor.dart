import 'package:flutter/material.dart';
import 'package:sn_skin_manager/widgets/WIP.dart';

class ExtractorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Extractor", style: TextStyle(color: Colors.white)),
        ),
        body: WIP()
    );
  }

}