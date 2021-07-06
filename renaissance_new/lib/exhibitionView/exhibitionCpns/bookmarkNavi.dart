import 'package:flutter/material.dart';
import 'package:renaissance_new/exhibitionView/historyAxisView/historyAxis.dart';
import 'package:renaissance_new/exhibitionView/mediciFamilyView/mediciFamily.dart';
import 'package:renaissance_new/exhibitionView/museumView/museum.dart';
import 'package:renaissance_new/exhibitionView/representativeView/representative.dart';

import 'bookmarkNaviItem.dart';

class ExhibitionMark extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container(
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MaterialButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context)=>HistoryAxis())
                );
              },
              child:MarkItem("历","史","轴","card1"),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context)=>Museum())
                );
              },
              child: MarkItem("博","物","馆","card2"),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context)=>Representative())
                );
              },
              child: MarkItem("名","人","堂","card3"),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context)=>MediciFamily())
                );
              },
              child: MarkItem("美","第","奇","card4"),
            ),
          ],
        )
    );
  }

}

