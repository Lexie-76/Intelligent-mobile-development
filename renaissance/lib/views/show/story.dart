import 'package:flutter/material.dart';

import 'Cpns/story_List.dart';
import 'Cpns/story_head.dart';

class Story extends StatelessWidget {
  const Story({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          '故事会',
          style: TextStyle(
            color: Colors.white,
            fontFamily: "ZhiMangXing",
            fontWeight: FontWeight.bold,
            fontSize: 40
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          storyList(),
          storyHead()
        ],
      ),
    );
  }
}