import 'package:flutter/material.dart';

class Museum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: Text("博物馆"),
            bottom: TabBar(
              tabs: [
                Tab(text: "文学"),
                Tab(text: "美术"),
                Tab(text: "音乐"),
                Tab(text: "天文"),
                Tab(text: "建筑"),
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
