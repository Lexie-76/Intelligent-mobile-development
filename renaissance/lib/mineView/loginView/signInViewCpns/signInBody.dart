import 'package:flutter/material.dart';
import 'package:renaissance/cloudBaseLink/cloudBase.dart';
import 'package:renaissance/mineView/loginView/signInViewCpns/signInRoute.dart';
import 'package:renaissance/mineView/mine.dart';

import '../login.dart';



class SignInBody extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return SignInBodyState();
  }
}

class SignInBodyState extends State<SignInBody> {
  String _username  ,_password, _passwordEnsure;
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              color: Colors.white
          ),
          child: Padding(
            padding: const EdgeInsets.only(top:50.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right:100.0,left:20.0,bottom:40),
                  child: Text("Welcome!",style: TextStyle(fontFamily: "LiShu", color:Colors.blueGrey,fontSize: 50),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:30.0,right: 30.0,top:30.0),
                  child: TextField(
                    controller: controller1,
                    obscureText: false,
                    autofocus: true,
                    decoration: InputDecoration(
                      hintText: "UserName(12字以内)",
                      border: InputBorder.none,
                    ),
                    maxLength: 12,
                    onChanged: (value){
                      setState(() {
                        this._username=value;
                      });
                      print(value);
                    },
                  ),
                ),
                SizedBox(height:5),
                Padding(
                  padding: const EdgeInsets.only(left:30.0,right: 15.0),
                  child: Divider(
                    height: 2.0,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(height:20),
                Padding(
                  padding: const EdgeInsets.only(left:30.0,right: 30.0,top:15.0),
                  child: TextField(
                    controller: controller2,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Password(20个符号以内)",
                      border: InputBorder.none,
                    ),
                    maxLength: 20,
                    onChanged: (value){
                      setState(() {
                        this._password=value;
                      });
                      print(this._password);
                    },
                  ),
                ),
                SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.only(left:30.0,right: 15.0),
                  child: Divider(
                    height: 2.0,
                    color: Colors.black54,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:30.0,right: 30.0,top:15.0),
                  child: TextField(
                    controller: controller3,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "确认密码",
                      border: InputBorder.none,
                    ),
                    maxLength: 20,
                    onChanged: (value){
                      setState(() {
                        this._passwordEnsure=value;
                      });
                      print(this._passwordEnsure);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:30.0,right: 15.0),
                  child: Divider(
                    height: 2.0,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(height: 60,),
                MaterialButton(
                  child: Container(
                    alignment: Alignment.center,
                    width:200,
                    decoration: BoxDecoration(
                      color:Colors.blueGrey,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Text("Sign In",style: TextStyle(color: Colors.white, fontFamily: "LiShu",fontSize: 40),),
                  ),
                  onPressed: (){
                    if(this._password == this._passwordEnsure){
                      // ScaffoldMessenger.of(context).showSnackBar(
                      //     SnackBar(content:Text("注册成功")));
                      // Global.db.collection('user').add({'user_name':this._username,'password':this._password});
                      Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context)=>SignInRoute(this._username, this._password))
                      );
                    }
                    else{
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content:Text("两次密码不一致")));

                    }
                  },
                )
              ],
            ),
          )
      ),
    );
  }
}



