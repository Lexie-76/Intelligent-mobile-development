import 'package:flutter/material.dart';
import 'package:renaissance/Component/tabbar_item.dart';
import 'package:renaissance/views/highlight/highlight.dart';
import 'package:renaissance/views/person/login_index.dart';
import 'package:renaissance/views/person/person.dart';
import 'package:renaissance/views/show/show.dart';
// import 'package:cloudbase_core/cloudbase_core.dart';
// import 'package:cloudbase_auth/cloudbase_auth.dart';


void main(){
  // 初始化 CloudBase
  // CloudBaseCore core = CloudBaseCore.init({
  //   // 填写您的云开发 env
  //   'env': 'mm-3ghjbed8e36cf2a7',
  //   // 填写您的移动应用安全来源凭证
  //   // 生成凭证的应用标识必须是 Android 包名或者 iOS BundleID
  //   'appAccess': {
  //     // 凭证
  //     'key': '49c6644f694fed5ca154579fe0d63fde',
  //     // 版本
  //     'version': '2'
  //   }
  // });
  //
  // // 获取登录状态
  // CloudBaseAuth auth = CloudBaseAuth(core);
  // CloudBaseAuthState authState = await auth.getAuthState();
  //
  // // 唤起匿名登录
  // if (authState == null) {
  //   await auth.signInAnonymously().then((success) {
  //     // 登录成功
  //     print(success);
  //   }).catchError((err) {
  //     // 登录失败
  //     print(err);
  //   });
  // }

  runApp(MyApp());
}


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"Renaissance",
      theme:ThemeData(
          primaryColor: Colors.blueGrey,
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent
      ),
      home: MyStackPage(),
    );
  }
}
class MyStackPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyStackPageState();
  }
}

class MyStackPageState extends State<MyStackPage>{
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        unselectedFontSize: 14,
        items:[
          TabBarItem("show","展览墙"),
          TabBarItem("highlight","交流圈"),
          TabBarItem("person","信息栏"),
          TabBarItem("person","登录"),

        ],
        onTap: (int index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: IndexedStack(
        index:_currentIndex,
        children: <Widget>[
          Show(),
          Highlight(),
          Person(),
          Tip()
        ],
      ),
    );
  }
}




