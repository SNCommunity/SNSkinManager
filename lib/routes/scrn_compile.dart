import 'package:flutter/material.dart';
import 'package:sn_skin_manager/widgets/WIP.dart';

class CompilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Compiler", style: TextStyle(color: Colors.white)),
      ),
      body: WIP()
    );
  }
  
}