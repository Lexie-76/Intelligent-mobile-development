import 'package:cloudbase_database/cloudbase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:renaissance/articleView/achievementArticle.dart';
import 'package:renaissance/cloudBaseLink/cloudBase.dart';


class MuseumAstronomyBody extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return MuseumAstronomyBodyState();
  }

}

class MuseumAstronomyBodyState extends State<MuseumAstronomyBody> {
  List dbDocument = [];
  getDocument() async{
    Global.db.collection('achievement').where({'label': '天文'}).get().then((res) {
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
      CircularProgressIndicator() :AnimationLimiter(
        child: GridView.builder(
          itemCount: dbDocument.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //横轴元素个数
              crossAxisCount: 2,
              //纵轴间距
              mainAxisSpacing: 15.0,
              //横轴间距
              // crossAxisSpacing: 8.0,
              //子组件宽高长度比例
              childAspectRatio: 0.8
          ),
          itemBuilder: (context, index) {
            return AnimationConfiguration.staggeredGrid(
              columnCount: dbDocument.length,
              position: index,
              duration: const Duration(milliseconds: 2000),
              child: SlideAnimation(
                verticalOffset: 50.0,
                child: FadeInAnimation(
                    child: Padding(
                      padding: EdgeInsets.only(top: 7.5,bottom:7.5),
                      child: MaterialButton(
                        child: Card(
                          // color: Colors.w,
                          elevation:5.0,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top:20.0),
                                child: Container(
                                  width: 135,
                                  height:155,
                                  child: Image.network(
                                    dbDocument[index]['img'],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              ListTile(
                                  title: Text(dbDocument[index]['name'],style: TextStyle(fontFamily: "LiShu",fontSize:20 ,color: Colors.black),),
                                  subtitle: Text(dbDocument[index]['author'],)
                              ),
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
                    )
                ),
              ),
            );
          },
        ),
      ),
    );
  }

}

