import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Artist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("名人堂"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
          child: ListView(
            children: [
              artistItem(),
              SizedBox(height:20),
              artistItem(),
            ],
          ),
        )
      ),
    );
  }

  Widget artistItem(){
    return Container(
      padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
      decoration: BoxDecoration(
        border: Border.all(
          width:2,
          color:Colors.black,
          style: BorderStyle.solid
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          photoInfo(),
          SizedBox(width: 10,),
          otherInfo()
        ],
      ),
    );
  }

  Widget photoInfo(){
    return ClipRect(
      child: Container(
          height:150,
          width:120,
          child: Image.network(
            'https://ssyerv1.oss-cn-hangzhou.aliyuncs.com/picture/389e31d03d36465d8acd9939784df6f0.jpg!sswm',
            fit:BoxFit.cover,
          )
      ),
    );
  }

  Widget otherInfo(){
    return Container(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border:Border(
                bottom: BorderSide(
                  width: 2,
                  color: Colors.grey,
                )
              )
            ),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("列奥纳多·达·芬奇",style: TextStyle(fontSize: 20, fontFamily: "ZhiMangXing")),
                Text("(Leonardo di ser Pieroda Vinci)",style: TextStyle(fontSize: 14, fontFamily: "ViaodaLibre")),
              ],
            ),
          ),
          SizedBox(height: 20),
          Text("comment")
        ],
      ),
    );
  }
}
