import 'package:flutter/material.dart';
import 'package:sn_skin_manager/widgets/WIP.dart';

class RepackagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Repackager", style: TextStyle(color: Colors.white)),
        ),
        body: WIP()
    );
  }

}