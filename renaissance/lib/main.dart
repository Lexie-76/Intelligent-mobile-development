import 'package:flutter/material.dart';
import 'package:renaissance/Component/tabbar_item.dart';
import 'package:renaissance/views/highlight/highlight.dart';
import 'package:renaissance/views/person/login_index.dart';
import 'package:renaissance/views/person/person.dart';
import 'package:renaissance/views/show/show.dart';
import 'package:cloudbase_core/cloudbase_core.dart';
import 'package:cloudbase_auth/cloudbase_auth.dart';
import 'package:cloudbase_function/cloudbase_function.dart';
import 'package:cloudbase_storage/cloudbase_storage.dart';
import 'package:cloudbase_database/cloudbase_database.dart';


void main(){
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

class MyStackPageState extends State<MyStackPage> {
  var _currentIndex = 0;
  bool flag = false;
  CloudBaseCore core;
  CloudBaseAuth auth;
  CloudBaseDatabase db;
  CloudBaseStorage storage;
  CloudBaseFunction cloudbase;

  ///初始化云开发
  init() async {
    CloudBaseCore core = CloudBaseCore.init({
      // 填写您的云开发 env
      'env': 'mm-3ghjbed8e36cf2a7',
      // 填写您的移动应用安全来源凭证
      // 生成凭证的应用标识必须是 Android 包名或者 iOS BundleID
      'appAccess': {
        // 凭证
        'key': '4c3e6c3b668be441e0d86a526a311d58',
        // 版本
        'version': '1'
      }
    });

    // 获取登录状态
    CloudBaseAuth auth = CloudBaseAuth(core);
    CloudBaseAuthState authState = await auth.getAuthState();

    // 唤起匿名登录
    if (authState == null) {
      await auth.signInAnonymously().then((success) {
        // 登录成功
        db = CloudBaseDatabase(core); //初始化数据库
        storage = CloudBaseStorage(core); //初始化对象存储
        cloudbase = CloudBaseFunction(core); //初始化云函数
        setState(() {
          flag = true;
        });
        print('登录成功');
      }).catchError((err) {
        // 登录失败
        setState(() {
          flag = false;
        });
        print(err);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () async {
      await init();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        unselectedFontSize: 14,
        items: [
          TabBarItem("show", "展览墙"),
          TabBarItem("highlight", "交流圈"),
          TabBarItem("person", "信息栏"),
          TabBarItem("person", "登录"),

        ],
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: <Widget>[
          Show(),
          Highlight(),
          Person(),
          Tip()
        ],
      ),
    );
  }

  @override
  void dispose() async {
    super.dispose();
    //退出登录
    await auth?.signOut();
  }
}
