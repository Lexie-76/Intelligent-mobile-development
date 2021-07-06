import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:renaissance/views/show/Cpns/tag_normal.dart';
import 'package:renaissance/views/show/Cpns/tag_special.dart';
import 'package:renaissance/views/show/Menu/museum_menu.dart';

import 'artist.dart';
import 'history.dart';
import 'story.dart';


class Museum extends StatelessWidget {
  // @override
  // Widget build(BuildContext context) {
  //   return DefaultTabController(
  //     length: 5,
  //     child: Scaffold(
  //       appBar: AppBar(
  //         title: Text("博物馆",
  //             style: TextStyle(
  //                 fontSize: 40,
  //                 fontFamily: "ZhiMangXing",
  //                 color:Colors.white
  //             )
  //         ),
  //         bottom: TabBar(
  //           indicatorColor: Colors.white,
  //           indicatorPadding: EdgeInsets.fromLTRB(10, 0, 10, 5),
  //           tabs: [
  //             Tab(
  //                 icon: Icon(Icons.local_library_outlined,color: Colors.white,),
  //                 text: "文学"
  //             ),
  //             Tab(
  //                 icon: Icon(Icons.palette_outlined,color: Colors.white,),
  //                 text: "美术"),
  //             Tab(
  //                 icon: Icon(Icons.music_note_outlined,color: Colors.white,),
  //                 text: "音乐"),
  //             Tab(
  //                 icon: Icon(Icons.public_outlined,color: Colors.white,),
  //                 text: "天文"),
  //             Tab(
  //                 icon: Icon(Icons.location_city_outlined,color: Colors.white,),
  //                 text: "建筑"),
  //           ],
  //         ),
  //       ),
  //       body: Center(
  //           child: TabBarView(
  //             children: [
  //               Text("文学", style: TextStyle(fontSize: 50)),
  //               Text("美术", style: TextStyle(fontSize: 50)),
  //               Text("音乐", style: TextStyle(fontSize: 50)),
  //               Text("天文", style: TextStyle(fontSize: 50)),
  //               Text("建筑", style: TextStyle(fontSize: 50)),
  //             ],
  //           )
  //       ),
  //       drawer: Drawer(
  //         child: MuseumMenu(),
  //       ),
  //     ),
  //   );
  // }
  int count=6;
  List containerList=[
    Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/person_page/welcome.png"),
          fit: BoxFit.cover
        )
      ),
    ),
    Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/person_page/welcome.png"),
              fit: BoxFit.cover
          )
      ),
    ),
    Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/person_page/welcome.png"),
              fit: BoxFit.cover
          )
      ),
    ),
    Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/person_page/welcome.png"),
              fit: BoxFit.cover
          )
      ),
    ),
    Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/person_page/welcome.png"),
              fit: BoxFit.cover
          )
      ),
    ),
    Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/person_page/welcome.png"),
              fit: BoxFit.cover
          )
      ),
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView"),
      ),
      body:
      AnimationLimiter(
        child:GridView.builder(
          itemCount: count,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //横轴元素个数
              crossAxisCount: 2,
              //纵轴间距
              mainAxisSpacing: 15.0,
              //横轴间距
              crossAxisSpacing: 10.0,
              //子组件宽高长度比例
              childAspectRatio: 0.6
          ),
          itemBuilder: (context,index){
            return AnimationConfiguration.staggeredGrid(
              columnCount:count,
              position: index,
              duration: const Duration(milliseconds: 1000),
              child: SlideAnimation(
                verticalOffset: 50.0,
                child: FadeInAnimation(
                  child:Padding(
                    padding: EdgeInsets.only(top:15),
                    child: containerList[index],
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
