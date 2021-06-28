import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Museum extends StatelessWidget {
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     bottomNavigationBar: CurvedNavigationBar(
  //       backgroundColor: Colors.blueAccent,
  //       items: <Widget>[
  //         Icon(Icons.add, size: 30),
  //         Icon(Icons.list, size: 30),
  //         Icon(Icons.compare_arrows, size: 30),
  //       ],
  //       onTap: (index) {
  //         //Handle button tap
  //       },
  //     ),
  //     body: Container(color: Colors.blueAccent),
  //   );
  // }
  @override
  Widget build(BuildContext context) {
     return DefaultTabController(
         length: 5,
         child: Scaffold(
           appBar: AppBar(
             title: Text("博物馆",
               style: TextStyle(
                   fontSize: 40,
                   fontFamily: "ZhiMangXing",
                   color:Colors.white
               )
             ),
             bottom: TabBar(
               tabs: [
                 Tab(
                   icon: Icon(Icons.local_library_outlined,color: Colors.white,),
                   text: "文学"
                 ),
                 Tab(
                   icon: Icon(Icons.palette_outlined,color: Colors.white,),
                   text: "美术"),
                 Tab(
                   icon: Icon(Icons.music_note_outlined,color: Colors.white,),
                   text: "音乐"),
                 Tab(
                   icon: Icon(Icons.public_outlined,color: Colors.white,),
                   text: "天文"),
                 Tab(
                   icon: Icon(Icons.location_city_outlined,color: Colors.white,),
                   text: "建筑"),
               ],
             ),
           ),
           body: Center(
             child: TabBarView(
               children: [
                 Text("故事会", style: TextStyle(fontSize: 50)),
                 Text("故事会", style: TextStyle(fontSize: 50)),
                 Text("故事会", style: TextStyle(fontSize: 50)),
                 Text("故事会", style: TextStyle(fontSize: 50)),
                 Text("故事会", style: TextStyle(fontSize: 50)),
               ],
             )
           ),
         )
     );
   }
}
