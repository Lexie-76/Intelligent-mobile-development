import 'package:flutter/material.dart';
import 'package:renaissance_new/globalCpns/BottomTab.dart';
import 'package:renaissance_new/mineView/loginView/loginViewCpns/loginBody.dart';

class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: LoginBody(),
        ),
    );
  }

}