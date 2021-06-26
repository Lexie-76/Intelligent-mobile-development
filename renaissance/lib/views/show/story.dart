import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("故事会"),
      ),
      body: Center(
        child: Text("故事会", style: TextStyle(fontSize: 50)),
      ),
    );
  }
}
