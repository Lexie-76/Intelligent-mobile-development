
import 'package:flutter/material.dart';
import 'package:renaissance/communityView/community.dart';
import 'package:renaissance/exhibitionView/historyAxisView/historyAxisBody.dart';
import 'package:renaissance/globalCpns/BottomTab.dart';
import 'package:renaissance/mineView/loginView/login.dart';



class HistoryAxis extends StatelessWidget {
  List _pages = [HistoryAxisBody(),Community(),Login()];
  @override
  Widget build(BuildContext context) {
    return Tabs(_pages);
  }
}



