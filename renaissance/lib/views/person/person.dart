
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Person extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          get_person_info(),
          SizedBox(height: 40),
          get_other_info("我的收藏","collect"),
          SizedBox(height: 15),
          get_other_info("我的点赞","like"),
          SizedBox(height: 15),
          get_other_info("我的文章","essay"),
        ]
      ),
    );
  }

  Widget get_person_info(){
    return Container(
      padding: EdgeInsets.fromLTRB(50,100,0,20),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/person_page/back.png"),
          fit: BoxFit.cover
        ),
      ),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipOval(
            child: Container(
              height:80,
              width:80,
              child: Image.network(
                'https://ssyerv1.oss-cn-hangzhou.aliyuncs.com/picture/389e31d03d36465d8acd9939784df6f0.jpg!sswm',
                fit:BoxFit.cover,
              )
            ),
          ),
          SizedBox(width: 40),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("昵称",style: TextStyle(color:Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                SizedBox(height: 10),
                Text("个性签名",style: TextStyle(color:Colors.white,fontSize: 15),),
              ],
            ),
          )
        ],
      )
    );
  }

  Widget get_other_info(String name,String picName){
    return Container(
      padding: EdgeInsets.fromLTRB(60,60,0,0),
      child:Row(
        children: [
          Image.asset("assets/images/person_page/${picName}.png",width:25),
          SizedBox(width:20),
          Text(name,style: TextStyle(fontSize: 20),)
        ],
      )
    );
  }

}


