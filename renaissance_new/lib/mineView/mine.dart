
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:renaissance_new/cloudBaseLink/cloudBase.dart';
import 'package:renaissance_new/globalCpns/BottomTab.dart';

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
    return dbDocument.isEmpty? CircularProgressIndicator():
    Scaffold(
      // bottomNavigationBar: Tabs(2),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white
        ),
        child: Column(
          children: [
            MineInfo(dbDocument),
            SizedBox(height:80),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: MaterialButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.favorite_border_rounded,size: 30,color: Colors.blueGrey),
                    SizedBox(width: 30,),
                    Text("我的收藏",style: TextStyle(fontFamily: "LiShu",fontSize: 30),),
                    SizedBox(width:150),
                    Icon(Icons.chevron_right,size: 30, color: Colors.blueGrey)
                  ],
                ),
                onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (contex)=>MyFavorite())
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: MaterialButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.access_time, size: 30,color: Colors.blueGrey),
                    SizedBox(width: 30,),
                    Text("我的动态",style: TextStyle(fontFamily: "LiShu",fontSize: 30),),
                    SizedBox(width:150),
                    Icon(Icons.chevron_right,size: 30, color: Colors.blueGrey)
                  ],
                ),
                onPressed: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (contex)=>MyArticle())
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: MaterialButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.email_outlined,size: 30,color: Colors.blueGrey),
                    SizedBox(width: 30,),
                    Text("联系我们",style: TextStyle(fontFamily: "LiShu",fontSize: 30),),
                    SizedBox(width: 10,),
                    Text("mlx000127@163.com",style: TextStyle(color:Colors.grey),),
                    Icon(Icons.chevron_right,size: 30, color: Colors.blueGrey)
                  ],
                ),
                onPressed: (){
                  Clipboard.setData(ClipboardData(text: 'mlx000127@163.com'));
                },
              ),
            )
          ],
        ),
        ),
    );
  }
}


