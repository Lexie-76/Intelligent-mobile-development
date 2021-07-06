import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'articleCpns/articleHead.dart';

class AchievementArticleBody extends StatefulWidget{
  List Info;
  AchievementArticleBody(List getInfo){
    this.Info = getInfo;
    print(this.Info);
  }
  @override
  State<StatefulWidget> createState() {
    return AchievementArticleBodyState();
  }

}

class AchievementArticleBodyState extends State<AchievementArticleBody>{
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
                    ArticleHead(widget.Info[0]['name'],widget.Info[0]['author'],widget.Info[0]['img']),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
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