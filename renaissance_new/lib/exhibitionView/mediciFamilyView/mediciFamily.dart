
import 'package:flutter/material.dart';
import 'package:renaissance_new/exhibitionView/mediciFamilyView/mediciFamilyBody.dart';
import 'package:renaissance_new/globalCpns/BottomTab.dart';




class MediciFamily extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text("美迪奇",
              style: TextStyle(
                  fontSize: 35,
                  fontFamily: "ZhiMangXing",
                  color: Colors.white
              )
          )
      ),
      body: Container(
        child: Text("测试")
            ),
      // bottomNavigationBar: Tabs(0),
        );
    // body: HistoryAxisBody()
  }
}



