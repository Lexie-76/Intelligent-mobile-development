import 'package:flutter/material.dart';
import 'package:renaissance_new/mineView/mine.dart';

import '../login.dart';

class Judge extends StatefulWidget{
  String user;
  int _state;
  Judge(int State, String userName){
    this._state = State;
    this.user = userName;
  }
  @override
  State<StatefulWidget> createState() {
    return JudgeState();
  }

}

class JudgeState extends State<Judge>{
  @override
  Widget build(BuildContext context) {
    return widget._state>1?Login():Mine(widget.user);
  }

}