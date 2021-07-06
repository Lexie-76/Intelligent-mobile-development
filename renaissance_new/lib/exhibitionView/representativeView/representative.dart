
import 'package:flutter/material.dart';
import 'package:renaissance_new/exhibitionView/historyAxisView/historyAxisBody.dart';
import 'package:renaissance_new/exhibitionView/representativeView/representativeBody.dart';
import 'package:renaissance_new/globalCpns/BottomTab.dart';
import 'package:shake_animation_widget/shake_animation_widget.dart';



class Representative extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RepresentativeState();
  }


}

class RepresentativeState extends State<Representative>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text("名人堂",
              style: TextStyle(
                  fontSize: 35,
                  fontFamily: "ZhiMangXing",
                  color: Colors.white
              )
          )
      ),
      body: RepresentativeBody(),
      // bottomNavigationBar: Tabs(0),

      // body: HistoryAxisBody(),
    );
  }


}




