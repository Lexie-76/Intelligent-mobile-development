import 'package:flutter/material.dart';
import 'package:renaissance/communityView/community.dart';
import 'package:renaissance/exhibitionView/exhibition.dart';
import 'package:renaissance/mineView/loginView/login.dart';

import 'BottomTabBar.dart';

class Tabs extends StatefulWidget{
  List _pages;
  Tabs(List pageList){
    this._pages = pageList;
  }
  @override
  State<StatefulWidget> createState() {
    return TabsState();
  }

}

class TabsState extends State<Tabs>{
  var _index = 0;
  @override
  Widget build(BuildContext context) {
    List _bottomTabBarPic = [
      "https://6d6d-mm-3ghjbed8e36cf2a7-1259678626.tcb.qcloud.la/global/exhibition.png?sign=9754082a840b4ba203022c5882d7ee46&t=1625251360",
      "https://6d6d-mm-3ghjbed8e36cf2a7-1259678626.tcb.qcloud.la/global/community.png?sign=3840626bc01e7fcaeb9a2b58a15b4c3a&t=1625251381",
      "https://6d6d-mm-3ghjbed8e36cf2a7-1259678626.tcb.qcloud.la/global/mine.png?sign=89c4ebbd17a88cd57a70aa7114c86545&t=1625251394",
    ];
    List _bottomTabBarPicActive = [
      "https://6d6d-mm-3ghjbed8e36cf2a7-1259678626.tcb.qcloud.la/global/exhibition_active.png?sign=343ab378f81783929fefb58ffdf2a557&t=1625251427",
      "https://6d6d-mm-3ghjbed8e36cf2a7-1259678626.tcb.qcloud.la/global/community_active.png?sign=f1eb25d4176e4fd793097ff463d3a2ce&t=1625251455",
      "https://6d6d-mm-3ghjbed8e36cf2a7-1259678626.tcb.qcloud.la/global/mine_active.png?sign=4aabcc4c453ee56fea07c9882621874b&t=1625251465"
    ];

    return Scaffold(
      body: widget._pages[this._index],
        bottomNavigationBar:BottomNavigationBar(
          currentIndex: _index,
          unselectedFontSize: 14,
          items: [
            BottomTabBarItem(_bottomTabBarPic[0], _bottomTabBarPicActive[0], "展览"),
            BottomTabBarItem(_bottomTabBarPic[1], _bottomTabBarPicActive[1], "社区"),
            BottomTabBarItem(_bottomTabBarPic[2], _bottomTabBarPicActive[2], "我的"),
          ],
          onTap: (int index) {
            setState(() {
              _index = index;
            });
          },
        )

    );
  }
}