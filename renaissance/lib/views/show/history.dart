import 'package:flutter/material.dart';

class History extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("历史轴",
            style: TextStyle(
            fontSize: 40,
            fontFamily: "ZhiMangXing",
            color:Colors.white
        )),
      ),
      body: Center(
        child: Text("历史轴", style: TextStyle(fontSize: 50)),
      ),
    );
  }
}
