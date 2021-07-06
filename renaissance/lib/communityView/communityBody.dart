import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:renaissance/articleView/communityArticle.dart';
import 'package:renaissance/cloudBaseLink/cloudBase.dart';


class CommunityBody extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return CommunityBodyState();
  }

}

class CommunityBodyState extends State<CommunityBody> {
  List dbDocument = [];
  getDocument() async{
    Global.db.collection('community').get().then((res) {
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
            title: Text("社区",
                style: TextStyle(
                    fontSize: 40,
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
                        child: Card(
                          color: Colors.blueGrey.withOpacity(0.1),
                          elevation:5.0,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top:8.0),
                                child: Container(
                                  child:Text(dbDocument[index]['title'],style: TextStyle(fontFamily:"LiShu", fontSize:20 ,color: Colors.black),)
                                ),
                              ),
                              SizedBox(height:10),
                              ListTile(
                                  title: Text(dbDocument[index]['author'],style: TextStyle(color: Colors.black),),
                                  subtitle: Text(dbDocument[index]['intro'],
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,)
                              ),
                            ],
                          ),
                        ),
                        onPressed: (){
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context)=>CommunityArticle(dbDocument[index]['_id']))
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


