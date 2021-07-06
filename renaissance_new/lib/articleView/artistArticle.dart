import 'package:cloudbase_database/cloudbase_database.dart';
import 'package:flutter/material.dart';
import 'package:renaissance_new/cloudBaseLink/cloudBase.dart';

import 'articleCpns/articleHead.dart';



class AchievementArticle extends StatefulWidget{
  String id;
  AchievementArticle(String getId){
    this.id = getId;
    print(this.id);
  }
  @override
  State<StatefulWidget> createState() {
    return AchievementArticleState();
  }

}

class AchievementArticleState extends State<AchievementArticle>{
  List dbDocument = [];
  getDocument() async{
    Global.db.collection('artist').where({'_id': widget.id}).get().then((res) {
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
                    ArticleHead(dbDocument[0]['name_ch']+"("+dbDocument[0]['name_en']+")",dbDocument[0]['author']),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(dbDocument[0]['Intro'],style: TextStyle(fontSize: 20, color: Colors.black),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:20.0,bottom: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Icon(Icons.star,color: Colors.yellow,size: 30,),
                              SizedBox(height: 5,),
                              Text("收藏")
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.favorite,color: Colors.red,size:30),
                              SizedBox(height: 5,),
                              Text("点赞")
                            ],
                          )
                        ],
                      ),
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