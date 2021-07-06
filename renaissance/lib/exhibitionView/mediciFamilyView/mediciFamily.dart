
import 'package:flutter/material.dart';
import 'package:renaissance/communityView/community.dart';
import 'package:renaissance/exhibitionView/mediciFamilyView/mediciFamilyBody.dart';
import 'package:renaissance/globalCpns/BottomTab.dart';
import 'package:renaissance/mineView/loginView/login.dart';



class MediciFamily extends StatelessWidget {
  List _pages = [MediciFamilyBody(),Community(),Login()];
  @override
  Widget build(BuildContext context) {
    return Tabs(_pages);
  }
}



