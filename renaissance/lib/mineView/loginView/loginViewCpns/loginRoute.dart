import 'package:flutter/material.dart';
import 'package:renaissance/cloudBaseLink/cloudBase.dart';
import 'package:renaissance/mineView/loginView/loginViewCpns/judge.dart';
import 'package:renaissance/mineView/loginView/signIn.dart';

class LoginRoute extends StatefulWidget{
  String user,pd;
  LoginRoute(String username,String password){
    this.user = username;
    this.pd = password;
    print(this.user);
  }
  @override
  State<StatefulWidget> createState() {
    return LoginRouteState();
  }
}

class LoginRouteState extends State<LoginRoute>{
  int State = 0;//1.匹配 2.密码错误 3.不存在
  List dbDocument = [];
  getDocument() async{
   Global.db.collection('user').where({'user_name': widget.user}).get().then((res) {
     setState(() {
       dbDocument = res.data;
       if(dbDocument.isEmpty){
         setState(() {
           State = 3;
         });
       }
       if(dbDocument.isNotEmpty && dbDocument[0]['password'] != widget.pd){
         setState(() {
           State = 2;
         });
       }
       if(dbDocument.isNotEmpty && dbDocument[0]['password'] == widget.pd){
         setState(() {
           State = 1;
         });
       }
     });
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
   return State>2?SignIn():Judge(State, widget.user);

  }

}