
import 'package:flutter/material.dart';

import 'exhibitionCpns/bookmarkNavi.dart';
import 'exhibitionCpns/swiper.dart';


class Exhibition extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("展览",
          style: TextStyle(color: Colors.white,fontFamily: "ZhiMangXing",fontSize: 40),),
        ),
        body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ExhibitionSwiper(),
                // TabPage3(),
                Text("———————— 文艺复兴 ————————",style: TextStyle(color: Colors.grey, fontFamily: "ZhiMangXing", fontSize: 20),),
                ExhibitionMark(),
              ],
            )
        )
    );
  }




}
