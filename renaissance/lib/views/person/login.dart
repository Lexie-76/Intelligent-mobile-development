
import 'package:flutter/material.dart';

import 'package:dio/dio.dart';

// class Tip extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         decoration: BoxDecoration(
//           color: Colors.white,
//         ),
//         child:Column(
//           children: [
//             welcome(),
//             MaterialButton(
//               child: login_button("点此登录"),
//               onPressed: (){
//                 if (_formKey.currentState.validate()) {
//                   ///只有输入的内容符合要求通过才会到达此处
//                   _formKey.currentState.save();
//                   //TODO 执行登录方法
//                   print('Phone:$_phone , Password:$_password');
//                   loadDataByDio();
//                 }
//               },),
//
//           ],
//         )
//     );
//   }
//  
//   loadDataByDio() async {
//     try {
//       print('登陆中');
//       Response response;
//       Dio dio = new Dio();
//       response = await dio.get(
//           "接口地址?phone=$_phone&password=$_password");
//       if (response.statusCode == 200) {
//         _result = 'success';
//         print(_result);
//       } else {
//         _result = 'error code : ${response.statusCode}';
//         print(_result);
//       }
//     } catch (exception) {
//       print('exc:$exception');
//     }
//     setState(() {});
//   }
//   Widget welcome(){
//     return Container(
//       padding: EdgeInsets.fromLTRB(100, 400, 100, 100),
//       decoration: BoxDecoration(
//           image: DecorationImage(
//               image: AssetImage("assets/images/person_page/welcome.png"),
//               fit: BoxFit.fitWidth
//           )
//       ),
//     );
//   }
//
//   Widget login_button(String choose){
//     return Container(
//       padding:EdgeInsets.fromLTRB(0, 20, 0, 30),
//       decoration: BoxDecoration(
//       ),
//       child:  Text(choose,style: TextStyle(fontSize: 18),),
//     );
//   }
//
// }

class LoginView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    _LoginViewState();
  }
}

class _LoginViewState extends State<LoginView>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("登录"),
        centerTitle: true,
        elevation: 10,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Image.asset(
              "assets/images/person_page/welcome.png",
              width: double.infinity,),
            SizedBox(height:50),
            TextField(
              controller: TextEditingController(),
              decoration: InputDecoration(
                labelText: "Username",
                prefixIcon: Icon(Icons.person),
                isCollapsed: true,
                contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 10)
              ),
              autofocus: true,
              textInputAction: TextInputAction.next,
            ),
            TextField(
              controller: TextEditingController(),
              decoration: InputDecoration(
                labelText: "Password",
                prefixIcon: Icon(Icons.lock),
                isCollapsed: true,
                contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 10)

              ),
              textInputAction: TextInputAction.send,

              onSubmitted: (String){

              },
            ),
          ],
        ),
      ),
    );
  }
}
