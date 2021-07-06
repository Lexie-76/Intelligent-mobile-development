import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:renaissance/mineView/mine.dart';

class ImagePickerPage extends StatefulWidget {
  List userInfo;
  ImagePickerPage(List userName){
    this.userInfo = userName;
  }
  _ImagePickerPageState createState() => _ImagePickerPageState();
}
class _ImagePickerPageState extends State<ImagePickerPage> {
  //记录选择的照片
  File _image;
  //拍照
  Future _getImageFromCamera() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera, maxWidth: 400);
  }
  //相册选择
  Future _getImageFromGallery() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
  }

//  上传图片到服务器并保存为用户头像
  _uploadImage() async {

  }
  @override
  Widget build(BuildContext context) {
    return Mine(widget.userInfo[0]['user_name']);
  }
}