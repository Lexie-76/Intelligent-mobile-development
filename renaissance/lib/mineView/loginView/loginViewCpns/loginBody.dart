import 'package:flutter/material.dart';
import 'package:renaissance/mineView/loginView/loginViewCpns/loginRoute.dart';

class LoginBody extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return LoginBodyState();
  }
}

class LoginBodyState extends State<LoginBody> {
    String _username  ,_password;
    TextEditingController controller1 = TextEditingController();
    TextEditingController controller2 = TextEditingController();

    @override
    Widget build(BuildContext context) {
      return Container(
          decoration: BoxDecoration(
            color: Colors.white
          ),
          child: Padding(
            padding: const EdgeInsets.only(top:30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.network("https://6d6d-mm-3ghjbed8e36cf2a7-1259678626.tcb.qcloud.la/login/appTag.png?sign=2742ba1e38af5ebb7bf9ad392d33a164&t=1625552991",
                    fit:BoxFit.none ,),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:30.0,right: 30.0,top:15.0),
                  child: TextField(
                    controller: controller1,
                    obscureText: false,
                    autofocus: true,
                    decoration: InputDecoration(
                      hintText: "UserName",
                      border: InputBorder.none,
                    ),
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
                      hintText: "Password",
                      border: InputBorder.none,
                    ),
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
                SizedBox(height: 60,),
                MaterialButton(
                  child: Container(
                    alignment: Alignment.center,
                    width:200,
                    decoration: BoxDecoration(
                      color:Colors.blueGrey,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Text("Login",style: TextStyle(color: Colors.white, fontFamily: "LiShu",fontSize: 40),),
                  ),
                  onPressed: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context)=>LoginRoute(this._username, this._password))
                    );
                  },
                )
            ],
                    ),
          )
              );
    }
 }



