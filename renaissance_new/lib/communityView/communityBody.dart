import 'package:flutter/material.dart';
import 'package:renaissance_new/communityView/writeArticleView/writeArticle.dart';

class CommunityBody extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return CommunityBodyState();
  }

}

class CommunityBodyState extends State<CommunityBody>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("社区",
          style: TextStyle(color: Colors.white,fontFamily: "ZhiMangXing",fontSize: 40),),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context)=>WriteArticle())
          );
        },
        child: Icon(Icons.post_add_rounded),
        backgroundColor: Color(0xFFECAB1D),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      body: Container(
          child:Text("社区")
      ),
      // bottomNavigationBar: Tabs(1),
    );
  }
}
