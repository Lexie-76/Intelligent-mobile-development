import 'package:flutter/material.dart';
import 'package:renaissance/Component/tabbar_item.dart';
import 'package:renaissance/views/highlight/highlight.dart';
import 'package:renaissance/views/person/login_index.dart';
import 'package:renaissance/views/person/person.dart';
import 'package:renaissance/views/show/show.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"Renaissance",
      theme:ThemeData(
          primaryColor: Colors.blueGrey,
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent
      ),
      home: MyStackPage(),
    );
  }
}
class MyStackPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyStackPageState();
  }
}

class MyStackPageState extends State<MyStackPage>{
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        unselectedFontSize: 14,
        items:[
          TabBarItem("show", "展示墙"),
          TabBarItem("highlight", "交流圈"),
          TabBarItem("person", "信息栏"),
          TabBarItem("person", "login"),

        ],
        onTap: (int index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: IndexedStack(
        index:_currentIndex,
        children: <Widget>[
          Show(),
          Highlight(),
          Person(),
          Tip()
        ],
      ),
    );
  }
}




