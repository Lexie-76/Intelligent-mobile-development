
import 'package:flutter/material.dart';

import 'museumBody/museumArchitectureBody.dart';
import 'museumBody/museumArtBody.dart';
import 'museumBody/museumAstronomyBody.dart';
import 'museumBody/museumLiteratureBody.dart';
import 'museumBody/museumMusicBody.dart';

class MuseumBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("博物馆",
              style: TextStyle(
                  fontSize: 35,
                  fontFamily: "ZhiMangXing",
                  color: Colors.white
              )
          ),
          bottom: TabBar(
            indicatorColor: Colors.white,
            indicatorPadding: EdgeInsets.fromLTRB(10, 0, 10, 5),
            tabs: [
              Tab(
                  icon: Icon(Icons.local_library_outlined,color: Colors.white,),
                  text: "文学"
              ),
              Tab(
                  icon: Icon(Icons.palette_outlined,color: Colors.white,),
                  text: "美术"),
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
                MuseumLiteratureBody(),
                MuseumArtBody(),
                MuseumAstronomyBody(),
                MuseumArchitectureBody(),
              ],
            )
        ),
        // bottomNavigationBar: Tabs(0),
      ),
    );
  }
}


