import 'package:cloudbase_database/cloudbase_database.dart';
import 'package:flutter/material.dart';
import 'package:renaissance/cloudBaseLink/cloudBase.dart';
import 'package:renaissance/mineView/loginView/login.dart';

class SignInRoute extends StatefulWidget{
  String user,pd;
  SignInRoute(String userName, String password){
    this.user = userName;
    this.pd = password;
  }
  @override
  State<StatefulWidget> createState() {
    return SignInRouteState();
  }
}

class SignInRouteState extends State<SignInRoute>{
  List dbDocument = [];
  // setDocument() async{
  //
  // }
  getDocument() async{
    Collection collection = Global.db.collection('user');
    collection.add({
      'user_name': widget.user,
      'password':widget.pd,
    }).then((res) {
      print(res);
    }).catchError((e) {
    });
    // await setDocument();
    Global.db.collection('user').get().then((res) {
      setState(() {
        dbDocument = res.data;
        print(dbDocument);
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
    return dbDocument.isEmpty?CircularProgressIndicator():Login();
  }
}