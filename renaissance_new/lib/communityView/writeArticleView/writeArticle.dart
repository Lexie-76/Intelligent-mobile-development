import 'package:flutter/material.dart';

class WriteArticle extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return WriteArticleState();
  }

}

class WriteArticleState extends State<WriteArticle>{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("写文章"),
    );
  }

}