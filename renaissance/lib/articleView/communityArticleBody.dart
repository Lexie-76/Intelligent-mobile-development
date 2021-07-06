import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'articleCpns/articleHead.dart';

class CommunityArticleBody extends StatefulWidget{
  List Info;
  CommunityArticleBody(List getInfo){
    this.Info = getInfo;
    print(this.Info);
  }
  @override
  State<StatefulWidget> createState() {
    return CommunityArticleBodyState();
  }

}

class CommunityArticleBodyState extends State<CommunityArticleBody>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(widget.Info[0]['name'],
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
                    Text(widget.Info[0]['title'],style: TextStyle(fontSize: 20, fontFamily: 'LiShu', color: Colors.black),),
                    SizedBox(height:35),
                    Padding(
                      padding: const EdgeInsets.only(right:200),
                      child: Text(widget.Info[0]['author'],style: TextStyle(fontSize: 20, color: Colors.black),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:10),
                      child: Text(widget.Info[0]['intro'],style: TextStyle(fontSize: 20, color: Colors.black),),
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