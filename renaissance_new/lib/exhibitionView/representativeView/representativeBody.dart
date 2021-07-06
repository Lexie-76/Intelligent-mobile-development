import 'package:cloudbase_database/cloudbase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:renaissance_new/articleView/achievementArticle.dart';
import 'package:renaissance_new/cloudBaseLink/cloudBase.dart';


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
      CircularProgressIndicator() :AnimationLimiter(
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
                  child: Card(
                    color: Colors.green,
                    elevation:5.0,
                    child: Column(
                      children: [
                        // Container(
                        //   child: Image.network(
                        //     dbDocument[index]['img'],
                        //     fit: BoxFit.cover,
                        //   ),
                        // ),
                        ListTile(
                            title: Text(dbDocument[index]['name_ch']+"("+dbDocument[index]['name_en']+")",style: TextStyle(fontFamily: "LiShu",fontSize:20 ,color: Colors.black),),
                            subtitle: Text(dbDocument[index]['Intro'],
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,)
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
              ),
            ),
          ),
        );
      },
    ),
    ),
    );
  }

}

