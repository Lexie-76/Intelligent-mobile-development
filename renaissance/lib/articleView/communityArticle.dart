import 'package:cloudbase_database/cloudbase_database.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:renaissance/articleView/communityArticleBody.dart';
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
    return dbDocument.isNotEmpty?CommunityArticleBody(dbDocument):CircularProgressIndicator();
  }


}