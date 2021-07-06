import 'package:flutter/material.dart';

class tagSpecial extends StatelessWidget{
  String title;
  tagSpecial(String title){
    this.title = title;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height:50,
      padding: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        // border:Border.all(
        //   width: 2,
        //   color: Colors.blueGrey
        // ),
          boxShadow: [
            BoxShadow(
                color: Colors.white.withOpacity(0.6),
                offset: Offset(2.0, 0.0), //阴影xy轴偏移量
                blurRadius:2.0, //阴影模糊程度
                spreadRadius: 1.0 //阴影扩散程度
            )
          ],
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(50.0),
              bottomRight: Radius.circular(50.0),
              topLeft: Radius.circular(15.0),
              bottomLeft: Radius.circular(15.0)),
          // image: DecorationImage(
          //     image: AssetImage("assets/images/show_page/tagback.png"),
          //     fit: BoxFit.fill
          // ),
          color: Color(0xFFFEF8F5)

      ),
      alignment: Alignment.centerLeft,
      child:Text(title, style: TextStyle(fontSize: 30,color: Colors.white, fontFamily: "LiShu"),),
    );
  }

}