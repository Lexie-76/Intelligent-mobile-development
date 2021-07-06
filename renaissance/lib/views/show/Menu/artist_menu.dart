
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:renaissance/views/show/Cpns/tag_normal.dart';
import 'package:renaissance/views/show/Cpns/tag_special.dart';
import 'package:renaissance/views/show/artist.dart';

import '../history.dart';
import '../museum.dart';
import '../story.dart';

class ArtistMenu extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/show_page/showback.png"),
            fit: BoxFit.cover
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
              padding: EdgeInsets.only(left:5, right: 40),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context)=>History())
                );
              },
              child: tagNormal("历史轴")),

          SizedBox(height:20),
          MaterialButton(
              padding: EdgeInsets.only(left:5, right: 40),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context)=>Museum())
                );
              },
              child: tagNormal("博物馆")),
          SizedBox(height:20),
          MaterialButton(
              padding: EdgeInsets.only(left:40, right: 5),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context)=>Artist())
                );
              },
              child: tagSpecial("名人堂")),
          SizedBox(height:20),
          MaterialButton(
              padding: EdgeInsets.only(left:5, right: 40),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context)=>Story())
                );
              },
              child: tagNormal("故事会")),
        ],
      ),
    );
  }
}