
import 'package:flutter/material.dart';
import 'package:renaissance_new/communityView/community.dart';
import 'package:renaissance_new/exhibitionView/historyAxisView/historyAxisBody.dart';
import 'package:renaissance_new/globalCpns/BottomTab.dart';
import 'package:renaissance_new/mineView/loginView/login.dart';



class HistoryAxis extends StatelessWidget {
  List _pages = [HistoryAxisBody(),Community(),Login()];
  @override
  Widget build(BuildContext context) {
    return Tabs(_pages);
  }
}



