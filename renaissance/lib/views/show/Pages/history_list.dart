import 'package:flutter/material.dart';
import 'package:renaissance/views/show/Cpns/flutter_time_axis.dart';


class HistoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("历史轴",
              style: TextStyle(
                  fontSize: 40,
                  fontFamily: "ZhiMangXing",
                  color: Colors.white
              )
          )
      ),
      body: Container(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return PaintCirLineItem(
              35,
              index,
              leftWidget: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Icon(Icons.add_road_outlined ,size: 25,color: Color(0xFFECAB1D),),
              ),
              isDash: false,
              // mygradient: gradient,
              marginLeft: 5,
              leftLineColor: Colors.blueGrey.withOpacity(0.6),
              alignment: Alignment.center,
              centerLeftWidget: Column(
                children: [
                  Text("第一"),
                  Text("第二"),
                  Text("第三"),
                ],
              ),
              centerRightWidget: Column(
                children: [
                  Text("第一"),
                  Text("第二"),
                  Text("第三"),
                ],
              ),
              timeAxisLineWidth: 1,
            );
          },
        ),
      ),
    );
  }
}



