import 'package:flutter/material.dart';

class tagNormal extends StatelessWidget{
  String title;
  tagNormal(String title){
    this.title = title;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 180,
        height:50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50.0),
            bottomLeft: Radius.circular(50.0)),
          color:Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black,
                  offset: Offset(2.0, 0.0), //阴影xy轴偏移量
                  blurRadius:10.0, //阴影模糊程度
                  spreadRadius: 1.0 //阴影扩散程度
              )
            ]
          ),
    alignment: Alignment.center,
    child:Text(title, style: TextStyle(fontSize: 25,fontFamily: "LiShu",color: Colors.black),)
    );
  }

}