import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:renaissance_new/mineView/mineViewCpns/imagePicker.dart';

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
  Future _getImageFromCamera() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera, maxWidth: 400);
  }
  //相册选择
  Future _getImageFromGallery() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(50,60,0,20),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(widget.userInfo[0]['back_img']),
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
                      widget.userInfo[0]['head_img'],
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