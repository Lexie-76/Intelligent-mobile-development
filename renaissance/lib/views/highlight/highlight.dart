
import 'package:flutter/material.dart';

class Highlight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("交流圈"),
      ),
      body: Center(
        child: Text("交流圈", style: TextStyle(fontSize: 50)),
      ),
    );
  }
}
