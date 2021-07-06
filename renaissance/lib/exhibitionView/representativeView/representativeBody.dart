import 'package:cloudbase_database/cloudbase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:renaissance/articleView/achievementArticle.dart';
import 'package:renaissance/cloudBaseLink/cloudBase.dart';


class RepresentativeBody extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return RepresentativeBodyState();
  }

}

class RepresentativeBodyState extends State<RepresentativeBody> {
  List dbDocument = [];
  getDocument() async{
    Global.db.collection('artist').get().then((res) {
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
    return Container(
      child:dbDocument.isEmpty?
      CircularProgressIndicator() :
      Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text("名人堂",
                style: TextStyle(
                    fontSize: 35,
                    fontFamily: "ZhiMangXing",
                    color: Colors.white
                )
            )
        ),
        body: AnimationLimiter(
    child:ListView.builder(
    itemCount: dbDocument.length,
        itemBuilder: (context,index){
          return AnimationConfiguration.staggeredList(
            position: index,
            duration: const Duration(milliseconds: 1000),
            child: SlideAnimation( //滑动动画
              verticalOffset: 50.0,
              child: FadeInAnimation( //渐隐渐现动画
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                  child: MaterialButton(
                    child: Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width:200,
                              child: Image.network(
                                dbDocument[index]['Img'],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Text(dbDocument[index]['name_ch'],style: TextStyle(fontFamily: "LiShu",fontSize:18 ,color: Colors.black),),
                              Text(dbDocument[index]['name_en'],style: TextStyle(fontFamily: "DancingScript",fontSize:15 ,color: Colors.black),),
                            ],
                          )
                        ],
                      ),
                    ),
                    onPressed: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context)=>AchievementArticle(dbDocument[index]['_id']))
                      );
                    },
                  ),
                ),
              ),
            ),
          );
        },
    ),
    ),
      ),
    );
  }

}

