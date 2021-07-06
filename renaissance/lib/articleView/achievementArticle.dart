import 'package:cloudbase_database/cloudbase_database.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:renaissance/cloudBaseLink/cloudBase.dart';

import 'achievementArticleBody.dart';
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
      setState(() {
        dbDocument = res.data;
      });
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
      return dbDocument.isNotEmpty?AchievementArticleBody(dbDocument):CircularProgressIndicator();
  }


}