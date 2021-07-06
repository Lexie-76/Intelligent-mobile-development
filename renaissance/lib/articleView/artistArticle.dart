import 'package:cloudbase_database/cloudbase_database.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:renaissance/cloudBaseLink/cloudBase.dart';

import 'articleCpns/articleHead.dart';
import 'artistArticleBody.dart';



class ArtistArticle extends StatefulWidget{
  String id;
  ArtistArticle(String getId){
    this.id = getId;
    print(this.id);
  }
  @override
  State<StatefulWidget> createState() {
    return ArtistArticleState();
  }

}

class ArtistArticleState extends State<ArtistArticle>{
  List dbDocument = [];
  getDocument() async{
    Global.db.collection('artist').where({'_id': widget.id}).get().then((res) {
      setState(() {
        dbDocument = res.data;
        print(dbDocument);
      });
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
    return dbDocument.isEmpty?CircularProgressIndicator():ArtistArticleBody(dbDocument);
  }


}