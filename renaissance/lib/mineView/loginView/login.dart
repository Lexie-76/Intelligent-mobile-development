import 'package:flutter/material.dart';
import 'package:renaissance/globalCpns/BottomTab.dart';
import 'package:renaissance/mineView/loginView/loginViewCpns/loginBody.dart';

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