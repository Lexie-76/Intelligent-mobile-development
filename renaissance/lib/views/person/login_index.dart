import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Tip extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child:Column(
        children: [
          welcome(),
          login_button("已有账号"),
          login_button("点此注册")

        ],
      )
    );
  }

  Widget welcome(){
    return Container(
      padding: EdgeInsets.fromLTRB(100, 400, 100, 100),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/person_page/welcome.png"),
          fit: BoxFit.fitWidth
        )
      ),
    );
  }

  Widget login_button(String choose){
    return Container(
      padding:EdgeInsets.fromLTRB(0, 20, 0, 30),
      decoration: BoxDecoration(
      ),
      child:  Text(choose,style: TextStyle(fontSize: 18),),
    );
  }

}