import 'package:flutter/material.dart';

class MarkItem extends StatelessWidget{
  String letter1, letter2, letter3, cardBack;
  MarkItem(String letter1, String letter2, String letter3, String cardBack){
    this.letter1 = letter1;
    this.letter2 = letter2;
    this.letter3 = letter3;
    this.cardBack = cardBack;
  }
  @override
  Widget build(BuildContext context) {
      return Container(
        padding: EdgeInsets.fromLTRB(10, 50, 10, 5),
        decoration: BoxDecoration(
          image:DecorationImage(
              image: AssetImage("assets/images/part1/$cardBack.png"),
              fit: BoxFit.cover
          ),
          color: Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            cardTitle(letter1,letter2,letter3),
            SizedBox(height:20),
            cardTag(),
          ],
        ),
      );
    }

  Widget cardTitle(String letter1, String letter2, String letter3){
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(letter1,style: TextStyle(color:Colors.black,fontSize: 50,fontFamily: "ZhiMangXing"),),
          Text(letter2,style: TextStyle(color:Colors.black,fontSize: 50,fontFamily: "ZhiMangXing"),),
          Text(letter3,style: TextStyle(color:Colors.black,fontSize: 50,fontFamily: "ZhiMangXing"),)
        ],
      ),
    );
  }

  Widget cardTag(){
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Renaissance",style: TextStyle(color:Colors.white,fontFamily: "DancingScript"),)
        ],
      ),
    );
  }
  }

