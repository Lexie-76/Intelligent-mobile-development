import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:renaissance/mineView/mineViewCpns/imagePicker.dart';

class MineInfo extends StatefulWidget{
  List userInfo;
  MineInfo(List info){
    this.userInfo = info;
  }
  @override
  State<StatefulWidget> createState() {
    return MineInfoState();
  }

}

class MineInfoState extends State<MineInfo>{

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(50,60,0,20),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage("https://6d6d-mm-3ghjbed8e36cf2a7-1259678626.tcb.qcloud.la/login/back.png?sign=34c636d209bc39d2f4ee38b1dcbec9d2&t=1625589068"),
              fit: BoxFit.cover
          ),
        ),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            MaterialButton(
              child: ClipOval(
                child: Container(
                    height:80,
                    width:80,
                    child: Image.network(
                      "https://6d6d-mm-3ghjbed8e36cf2a7-1259678626.tcb.qcloud.la/login/appTag.png?sign=f8532f63be257b935917c489b7d4cb8b&t=1625589042",
                      fit:BoxFit.cover,
                    )
                ),
              ),
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context)=>ImagePickerPage(widget.userInfo)),
                );
              },
            ),
            SizedBox(width: 50),
            Container(
              child:
                Text(widget.userInfo[0]['user_name'],style: TextStyle(color:Colors.white, fontSize: 20,fontFamily: "LiShu", fontWeight: FontWeight.bold),),
            )
          ],
        )
    );

  }

}