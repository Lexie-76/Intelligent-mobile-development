
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:like_button/like_button.dart';
import 'package:renaissance_new/cloudBaseLink/cloudBase.dart';
import 'axisCpns/flutter_time_axis.dart';

List dbDocument = [];
class HistoryAxisBody extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    Global.db.collection("history").get().then((res) {
      dbDocument = res.data;
    });
    return HistoryAxisBodyState();
  }
}
 class HistoryAxisBodyState extends State<HistoryAxisBody> {

   @override
   Widget build(BuildContext context) {
     return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("历史轴",
              style: TextStyle(
                fontSize: 35,
                  fontFamily: "ZhiMangXing",
                    color: Colors.white
              )
          )
       ),
       body: AnimationLimiter(
           child: ListView.builder(
             itemCount: dbDocument.length,
             itemBuilder: (context, index) {
               return PaintCirLineItem(
                 35,
                 index,
                 leftWidget:Padding(
                   padding: const EdgeInsets.only(left:2,top:10.0, bottom:10.0),
                   child: LikeButton(
                       likeBuilder: (bool isLiked){
                         return Icon(Icons.adjust_rounded,size:20, color: Color(0xFFECAB1D),);}),
                 ),
                 isDash: false,
                 // mygradient: gradient,
                 marginLeft: 10,
                 leftLineColor: Colors.blueGrey.withOpacity(0.6),
                 alignment: Alignment.centerLeft,
                 contentWight:
                 AnimationConfiguration.staggeredList(
                   duration: const Duration(milliseconds: 3500),
                   child: SlideAnimation(
                     child: FadeInAnimation(
                       child: Padding(
                         padding: const EdgeInsets.only(left:15.0, right: 40),
                         child: Container(
                           decoration: BoxDecoration(
                             border:Border(
                               bottom: BorderSide(
                                 color: Colors.grey,
                                 width:1
                               )
                             )
                           ),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text(dbDocument[index]['year'],style:TextStyle(fontFamily: "LiShu",fontSize:30)),
                               SizedBox(height:15),
                               Padding(
                                 padding: const EdgeInsets.only(left:20.0),
                                 child: Text(dbDocument[index]['event']),
                               ),
                             ],
                           ),
                         ),
                       ),
                     ),
                   ),
                 ),
                 timeAxisLineWidth: 5,
               );
             },
           ),
         ),
     );
   }
 }

