import 'dart:io';

import 'package:dio/dio.dart';

class Global{
  static Global _instance;
  Dio dio;
   static Global getInstance(){
     if(_instance == null)
       _instance = new Global();
     return _instance;
   }

   Global(){
     dio = new Dio();
     dio.options = BaseOptions(
       baseUrl: "",
       connectTimeout: 5000,
       sendTimeout: 5000,
       receiveTimeout: 5000,
       headers:{
         "token": "000127",
       },
       contentType:Headers.jsonContentType,
       responseType: ResponseType.json,
     );
     //监听
     dio.interceptors.add(InterceptorsWrapper(
       // onRequest: (options){
       //   print("请求");
       // },
       // onResponse: (e){
       //   print("返回");
       // },
       onError: (e){
         print("错误");
       }
     ));
   }
}