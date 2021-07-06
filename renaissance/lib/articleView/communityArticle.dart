import 'package:cloudbase_database/cloudbase_database.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:renaissance/cloudBaseLink/cloudBase.dart';

import 'articleCpns/articleHead.dart';



class CommunityArticle extends StatefulWidget{
  String id;
  CommunityArticle(String getId){
    this.id = getId;
    print(this.id);
  }
  @override
  State<StatefulWidget> createState() {
    return CommunityArticleState();
  }

}

class CommunityArticleState extends State<CommunityArticle>{
  List dbDocument = [];
  getDocument() async{
    Global.db.collection('community').where({'_id': widget.id}).get().then((res) {
      dbDocument = res.data;
      print(dbDocument);
    });
  }
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration.zero, () async {
      await getDocument();
    });

  }

  @override
  Widget build(BuildContext context) {
    return dbDocument.isEmpty?CircularProgressIndicator():
    Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(dbDocument[0]['name_ch'],
              style: TextStyle(
                  fontSize: 35,
                  fontFamily: "ZhiMangXing",
                  color: Colors.white
              )
          ),
        ),
        body:Scrollbar(// 显示进度条
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16.0),
            child: Center(
              child: Container(
                child: Column(
                  children: [
                    Text(dbDocument[0]['title'],style: TextStyle(fontSize: 20, fontFamily: 'LiShu', color: Colors.black),),
                    SizedBox(height:35),
                    Padding(
                      padding: const EdgeInsets.only(right:200),
                      child: Text(dbDocument[0]['author'],style: TextStyle(fontSize: 20, color: Colors.black),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:10),
                      child: Text(dbDocument[0]['intro'],style: TextStyle(fontSize: 20, color: Colors.black),),
                    ),
                    LikeButton(
                      likeBuilder: (bool isLiked){
                        return Icon(
                          Icons.favorite_border,
                          color: isLiked ? Color(0xFFECAB1D) : Colors.grey,
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }


}