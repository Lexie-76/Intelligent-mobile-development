
import 'package:flutter/material.dart';
import 'package:renaissance/communityView/community.dart';
import 'package:renaissance/exhibitionView/representativeView/representativeBody.dart';
import 'package:renaissance/globalCpns/BottomTab.dart';
import 'package:renaissance/mineView/loginView/login.dart';




class Representative extends StatelessWidget {
  List _pages = [RepresentativeBody(),Community(),Login()];
  @override
  Widget build(BuildContext context) {
    return Tabs(_pages);
  }
}



