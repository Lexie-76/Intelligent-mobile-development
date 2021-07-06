import 'package:flutter/material.dart';

class TabPage3 extends StatefulWidget {
  @override
  createState() => new LogoFadeState();
}
class LogoFadeState extends State<TabPage3> {
  // 初始opacityLevel为1.0为可见状态，为0.0时不可见
  double opacityLevel = 0.0;
  _changeOpacity() {
    //调用setState（）  根据opacityLevel当前的值重绘ui
    // 当用户点击按钮时opacityLevel的值会（1.0=>0.0=>1.0=>0.0 ...）切换
    // 所以AnimatedOpacity 会根据opacity传入的值(opacityLevel)进行重绘 Widget
    setState(
            () => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0
    );
  }
  @override
  Widget build(BuildContext context) {
    return new Column(//一个Column布局，主轴为垂直方向，起点在上沿。
      mainAxisAlignment: MainAxisAlignment.spaceAround,//子组件在主轴上均匀分布在容器内，两边留有一半的间隔空间。
      children: [
        new MaterialButton(
          child:new Container(
            child:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("———————",style: TextStyle(color: Colors.grey, fontFamily: "ZhiMangXing", fontSize: 20),),
                Text("文艺复兴 ",style: TextStyle(color: Colors.grey, fontFamily: "ZhiMangXing", fontSize: 20),),
                Image.asset("assets/images/show_page/action.png",width:20),
                Text("———————",style: TextStyle(color: Colors.grey, fontFamily: "ZhiMangXing", fontSize: 20),),
              ],
            )

          ) ,
          onPressed: _changeOpacity,//添加点击事件
        ),
        new AnimatedOpacity(// 使用一个AnimatedOpacity Widget
            opacity: opacityLevel,
            duration: new Duration(seconds: 1),//过渡时间：1
            child:new Container(
              padding:const EdgeInsets.only(right:20.0,bottom:15.0,left:20.0),//内边距
              child:new Text("思想解放运动和人文主义")
            ),
        )
      ],
    );
  }
}
