
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:renaissance/cloudBaseLink/cloudBase.dart';
import 'package:renaissance/communityView/community.dart';
import 'package:renaissance/exhibitionView/exhibition.dart';
import 'package:renaissance/globalCpns/BottomTab.dart';
import 'package:renaissance/mineView/mineBody.dart';

import 'mineViewCpns/mineInfo.dart';
import 'myArticle.dart';
import 'myFavorite.dart';

class Mine extends StatefulWidget{
  String user;
  Mine(String userName){
    this.user = userName;
  }

  @override
  State<StatefulWidget> createState() {
    return MineState();
  }

}

class MineState extends State<Mine> {
  List dbDocument = [];
  getDocument() async{
    Global.db.collection('user').where({'user_name': widget.user}).get().then((res) {
      setState(() {
        dbDocument = res.data;
      });
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
    List _pages = [Exhibition(),Community(),MineBody(dbDocument)];

    return Tabs(_pages);
  }
}


