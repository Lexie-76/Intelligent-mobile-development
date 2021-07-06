import 'package:flutter/material.dart';
import 'package:renaissance/globalCpns/BottomTab.dart';

import 'mineViewCpns/mineHead.dart';

class MyFavorite extends StatelessWidget {
  const MyFavorite({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 50,
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