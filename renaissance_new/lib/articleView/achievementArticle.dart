import 'package:cloudbase_database/cloudbase_database.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:renaissance_new/cloudBaseLink/cloudBase.dart';

import 'articleCpns/articleHead.dart';



class AchievementArticle extends StatefulWidget{
  String id;
  AchievementArticle(String _id){
    id = _id;
    print(id);
  }
  @override
  State<StatefulWidget> createState() {
    return AchievementArticleState();
  }

}

class AchievementArticleState extends State<AchievementArticle>{
  List dbDocument = [];
  getDocument() async{
    Global.db.collection('achievement').where({'_id': widget.id}).get().then((res) {
      dbDocument = res.data;
      print(dbDocument);
    });
  }
  @override
  void initState(){
    Future.delayed(Duration.zero, () async {
      await getDocument();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
      return dbDocument.isEmpty?CircularProgressIndicator():
      Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(dbDocument[0]['name'],
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
                      ArticleHead(dbDocument[0]['name'],dbDocument[0]['author']),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
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