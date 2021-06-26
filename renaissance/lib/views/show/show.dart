
import 'package:flutter/material.dart';
import 'package:renaissance/views/show/artist.dart';
import 'package:renaissance/views/show/history.dart';
import 'package:renaissance/views/show/museum.dart';
import 'package:renaissance/views/show/story.dart';

class Show extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("展览墙"),
      ),
      body: Container(
          padding: EdgeInsets.fromLTRB(80, 20, 80, 0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/show_page/showback.png"),
              fit: BoxFit.cover
            )
          ),
          child:Column(
            children: [
              MaterialButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context)=>History())
                  );
                },
                child:cardItem("历史轴", "思想解放运动和人文主义"),
              ),
              SizedBox(height: 20,),
              MaterialButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context)=>Museum())
                  );
                },
                child: cardItem("博物馆", "文艺复兴时期的艺术成就"),
              ),
              SizedBox(height: 20,),
              MaterialButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context)=>Artist())
                  );
                },
                child: cardItem("名人堂", "代表人物与杰出的艺术家"),
              ),
              SizedBox(height: 20,),
              MaterialButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context)=>Story())
                  );
                },
                child: cardItem("故事会", "文艺复兴背后的神秘家族"),
              ),
            ],
          )
      )
    );
  }

  Widget cardItem(String title, String intro){
    return Container(
      decoration: BoxDecoration(
        border:Border.all(
          color: Color(0xff4f8fa6),
          width: 2,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.circular(5.0),
        gradient: LinearGradient(colors: [Color(0xFFFFFBF0), Color(0x00FFFAEB)], begin: FractionalOffset(1, 0), end: FractionalOffset(0, 1)),
        boxShadow: [BoxShadow(color: Color(0x99607D8B), offset: Offset(1.0, 1.0), blurRadius: 1.0, spreadRadius: 1.0)],
      ),
      child: Column(
        children: [
          cardTitle(title),
          Text(intro,style: TextStyle(fontSize: 14,color: Colors.grey),),
          SizedBox(height:20),
          cardTag()
        ],
      ),
    );
  }

  Widget cardTitle(String title){
    return Container(
      padding:EdgeInsets.only(top:20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/show_page/left.png",width: 40),
          Text(title,style: TextStyle(fontSize: 50,fontFamily: "ZhiMangXing"),),
          Image.asset("assets/images/show_page/right.png",width: 40)
        ],
      ),
    );
  }

  Widget cardTag(){
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/show_page/round.png",width: 25,),
          Text("Renaissance",style: TextStyle(fontFamily: "DancingScript"),),
          Image.asset("assets/images/show_page/round.png",width: 25,)
        ],
      ),
    );
  }

}
