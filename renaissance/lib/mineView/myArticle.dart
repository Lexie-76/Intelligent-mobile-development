import 'package:flutter/material.dart';
import 'package:renaissance/globalCpns/BottomTab.dart';

import 'mineViewCpns/mineHead.dart';

class MyArticle extends StatelessWidget {
  const MyArticle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 50,
        title: Text(
        '动态',
        style: TextStyle(
            color: Colors.white,
            fontFamily: "LiShu",
            fontWeight: FontWeight.bold,
            fontSize: 20
        ),
      ),
      ),
      body: Stack(
        children: <Widget>[
          // StoryList(),
          MineHead()
        ],
      ),
      // bottomNavigationBar: Tabs(2),
    );
  }
}