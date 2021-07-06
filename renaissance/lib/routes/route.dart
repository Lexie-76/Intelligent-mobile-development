import 'package:flutter/cupertino.dart';
import 'package:renaissance/views/person/login.dart';

Map<String, WidgetBuilder> route = {
  "/": (BuildContext context) => LoginView(),
};


// body: Container(
// // constraints: BoxConstraints.expand(),
// child: Stack(
// children: [
// Positioned(
// right: 33,
// bottom: 33,
// //悬浮按钮
// child: RoteFloatingButton(
// //菜单图标组
// iconList: [
// Icon(Icons.),
// Icon(Icons.message),
// Icon(Icons.aspect_ratio),
// ],
// //点击事件回调
// clickCallback: (int index){
//
// },
// ),
// ),
// ],
// ),
// ),