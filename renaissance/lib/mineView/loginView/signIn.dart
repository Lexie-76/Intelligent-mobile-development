import 'package:flutter/material.dart';
import 'package:renaissance/globalCpns/BottomTab.dart';

import 'signInViewCpns/signInBody.dart';

class SignIn extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SignInBody(),
      ),
      // bottomNavigationBar: Tabs(2),
    );
  }

}