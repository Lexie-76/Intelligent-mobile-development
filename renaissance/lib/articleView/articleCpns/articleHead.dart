import 'package:flutter/material.dart';

class ArticleHead extends StatelessWidget{
  String pic, text1, text2;
  ArticleHead(String text1, String text2,String picName ){
    this.text1 = text1;
    this.text2 = text2;
    this.pic = picName;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left:15,top: 20),
            child: Container(
              width: 120,
              height: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(pic),
                      fit: BoxFit.cover
                  )
              ),
            ),
          ),
          SizedBox(width: 20,),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(text1,style: TextStyle(fontFamily: "LiShu", fontSize: 20),),
              SizedBox(height: 20,),
              Text(text2,style: TextStyle(color: Colors.grey),),
            ],
          )
        ],
      ),
    );

  }

}