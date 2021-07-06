
import 'package:flutter/material.dart';
import 'package:renaissance/exhibitionView/mediciFamilyView/mediciFamilyBody.dart';
import 'package:renaissance/globalCpns/BottomTab.dart';




class MediciFamilyBody extends StatelessWidget {

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
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              image: NetworkImage("https://6d6d-mm-3ghjbed8e36cf2a7-1259678626.tcb.qcloud.la/medici/medici.png?sign=150c854d97afc0bbd7c527e5d4202741&t=1625577458")
            )
          ),
      ),
      // bottomNavigationBar: Tabs(0),
    );
    // body: HistoryAxisBody()
  }
}



