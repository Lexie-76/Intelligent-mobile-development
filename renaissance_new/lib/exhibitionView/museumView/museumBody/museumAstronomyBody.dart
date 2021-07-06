import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:renaissance_new/cloudBaseLink/cloudBase.dart';

List dbDocument = [];
class MuseumAstronomyBody extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    Global.db.collection('achievement').where({'label': '天文'}).get().then((res) {
      dbDocument = res.data;
      print(dbDocument);
    });
    return MuseumAstronomyBodyState();
  }

}

class MuseumAstronomyBodyState extends State<MuseumAstronomyBody> {
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
    super.initState();
    getDocument();
    Future.delayed(Duration.zero, () async {
      await getDocument();
    });
  }
  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: GridView.builder(
        itemCount: dbDocument.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //横轴元素个数
            crossAxisCount: 2,
            //纵轴间距
            mainAxisSpacing: 15.0,
            //横轴间距
            // crossAxisSpacing: 10.0,
            //子组件宽高长度比例
            childAspectRatio: 0.8
        ),
        itemBuilder: (context, index) {
          return AnimationConfiguration.staggeredGrid(
            columnCount: dbDocument.length,
            position: index,
            duration: const Duration(milliseconds: 1000),
            child: SlideAnimation(
              verticalOffset: 50.0,
              child: FadeInAnimation(
                  child: Padding(
                    padding: EdgeInsets.only(top: 7.5,bottom:7.5),
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
                              title: Text(dbDocument[index]['name'],style: TextStyle(fontFamily: "LiShu",fontSize: 20,color: Colors.black),),
                              subtitle: Text(dbDocument[index]['author'],)
                          ),
                        ],
                      ),
                    ),
                  )
              ),
            ),
          );
        },
      ),
    );
  }
}