// import 'package:flutter/material.dart';
// import 'package:renaissance/Component/tabbar_item.dart';
// import 'package:renaissance/views/highlight/highlight.dart';
// import 'package:renaissance/views/person/login.dart';
// import 'package:renaissance/views/person/login_index.dart';
// import 'package:renaissance/views/person/person.dart';
// import 'package:renaissance/views/show/show.dart';
// import 'package:cloudbase_core/cloudbase_core.dart';
// import 'package:cloudbase_auth/cloudbase_auth.dart';
// import 'package:cloudbase_function/cloudbase_function.dart';
// import 'package:cloudbase_storage/cloudbase_storage.dart';
// import 'package:cloudbase_database/cloudbase_database.dart';
//
// import 'views/article/intro.dart';
//
//
// void main(){
//   runApp(MyApp());
// }
//
//
// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title:"Renaissance",
//       theme:ThemeData(
//           primaryColor: Colors.blueGrey,
//           highlightColor: Colors.transparent,
//           splashColor: Colors.transparent
//       ),
//       home: MyStackPage(),
//     );
//   }
// }
//
// class MyStackPage extends StatefulWidget{
//   @override
//   State<StatefulWidget> createState() {
//     return MyStackPageState();
//   }
// }
//
// class MyStackPageState extends State<MyStackPage> {
//   var _currentIndex = 0;
//   // bool flag = false;
//   // List dbDocuments = [];
//   // CloudBaseCore core;
//   // CloudBaseAuth auth;
//   // CloudBaseDatabase db;
//   // CloudBaseStorage storage;
//   // CloudBaseFunction cloudbase;
//   //
//   // getDocument() async {
//   //   db.collection('test').where({'name': 'test'}) .get().then((res) {
//   //     setState(() {
//   //       dbDocuments = res.data;
//   //     });
//   //     print("res.data is:");
//   //     print(res.data);
//   //   })
//   //       .catchError((e) {
//   //     print('获取文档失败');
//   //   });
//   // }
//
//   ///初始化云开发
//   // init() async {
//   //   CloudBaseCore core = CloudBaseCore.init({
//   //     // 填写您的云开发 env
//   //     'env': 'mm-3ghjbed8e36cf2a7',
//   //     // 填写您的移动应用安全来源凭证
//   //     // 生成凭证的应用标识必须是 Android 包名或者 iOS BundleID
//   //     'appAccess': {
//   //       // 凭证
//   //       'key': 'f421d1f36b363836595e831a3e4e0f53',
//   //       // 版本
//   //       'version': '1'
//   //     }
//   //   });
//   //
//   //
//   //   // 获取登录状态
//   //   CloudBaseAuth auth = CloudBaseAuth(core);
//   //   CloudBaseAuthState authState = await auth.getAuthState();
//   //
//   //   //唤起匿名登录
//   //   if (authState == null) {
//   //     await auth.signInAnonymously().then((success) {
//   //       // 登录成功
//   //       db = CloudBaseDatabase(core); //初始化数据库
//   //       storage = CloudBaseStorage(core); //初始化对象存储
//   //       cloudbase = CloudBaseFunction(core); //初始化云函数
//   //       setState(() {
//   //         flag = true;
//   //       });
//   //       print('登录成功');
//   //     }).catchError((err) {
//   //       // 登录失败
//   //       setState(() {
//   //         flag = false;
//   //       });
//   //       print('登录失败');
//   //     });
//   //   }
//   //   getDocument();
//   // }
//
//   // @override
//   // void initState() {
//   //   super.initState();
//   //   Future.delayed(Duration.zero, () async {
//   //     await init();
//   //   });
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // body: Container(
//       //   alignment: Alignment.center,
//       //   child:Column(
//       //     children: [
//       //       // MaterialButton(
//       //       //   child:Container(
//       //       //     decoration: BoxDecoration(
//       //       //       color: Colors.red.withOpacity(0.3)
//       //       //     ),
//       //       //     child:Text("点击获取数据"),
//       //       //   ),
//       //       //   onPressed: (){
//       //       //     getDocument();
//       //       //   },
//       //       // ),
//       //       Text(dbDocuments.length > 0
//       //           ? '获取到${dbDocuments.length}个文档（来自云数据库）\n' +
//       //           dbDocuments.first['nation']
//       //           : '',)
//       //     ],
//       //   )
//       // ),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _currentIndex,
//         unselectedFontSize: 14,
//         items: [
//           TabBarItem("show", "展览墙"),
//           TabBarItem("highlight", "交流圈"),
//           TabBarItem("person", "信息栏"),
//           TabBarItem("person", "登录"),
//
//         ],
//         onTap: (int index) {
//           setState(() {
//             _currentIndex = index;
//           });
//         },
//       ),
//       body: IndexedStack(
//         index: _currentIndex,
//         children: <Widget>[
//           ShowPage(),
//           // HighLightPage(),
//           HeroAnimationRoute(),
//           Person(),
//           // LoginView()
//         ],
//       ),
//     );
//   }
//
// //   @override
// //   void dispose() async {
// //     super.dispose();
// //     //退出登录
// //     await auth?.signOut();
// //   }
// // }
//
// // import 'dart:io';
// // import 'package:flutter/material.dart';
// // // import 'package:file_picker/file_picker.dart';
// // import 'package:cloudbase_core/cloudbase_core.dart';
// // import 'package:cloudbase_auth/cloudbase_auth.dart';
// // import 'package:cloudbase_function/cloudbase_function.dart';
// // import 'package:cloudbase_storage/cloudbase_storage.dart';
// // import 'package:cloudbase_database/cloudbase_database.dart';
//
// // void main() {
// //   runApp(MyApp());
// // }
//
// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Flutter接入腾讯云开发',
// //       theme: ThemeData(
// //         primarySwatch: Colors.blue,
// //       ),
// //       home: MyHomePage(title: 'Flutter接入腾讯云开发'),
// //     );
// //   }
// // }
//
// // class MyHomePage extends StatefulWidget {
// //   MyHomePage({Key key, this.title}) : super(key: key);
// //   final String title;
// //
// //   @override
// //   _MyHomePageState createState() => _MyHomePageState();
// // }
// //
// // class _MyHomePageState extends State<MyHomePage> {
// //   int _counter = 0;
// //   bool flag = false;
// //   String filePath = '';
// //   List dbDocuments = [];
// //   CloudBaseCore core;
// //   CloudBaseAuth auth;
// //   CloudBaseDatabase db;
// //   CloudBaseStorage storage;
// //   CloudBaseFunction cloudbase;
// //
// //   ///加号按钮点击事件
// //   void _incrementCounter() async {
// //     if (!flag) return;
// //     //调用云函数+1
// //     CloudBaseResponse res =
// //     await cloudbase.callFunction('addOne', {'num': _counter});
// //     setState(() {
// //       _counter = res.data['result'];
// //     });
// //   }
// //
// //   ///将本地文件上传到cos
// //   // upload() async {
// //   //   File file = await FilePicker.getFile();
// //   //   if (file != null) {
// //   //     await storage.uploadFile(
// //   //         cloudPath: file.path.split("/").last, filePath: file.path);
// //   //     setState(() {
// //   //       filePath = file.path.split("/").last;
// //   //     });
// //   //   }
// //   // }
// //
// //   ///查询云数据库文档
// //   getDocument() async {
// //     List testList = [
// //       "123",
// //       "456"
// //     ];
// //     var _ = db.command;
// //     db
// //         .collection('artist')
// //         .where({'nation':_.eq('意大利')}) //获取date日期为2020-04-20的文档
// //         .get()
// //         .then(
// //             (value){
// //               print("=== $value");
// //               setState(() {
// //                 dbDocuments = value.data;
// //               });
// //             }
// //       //       (res) {
// //       // setState(() {
// //       //   dbDocuments = res.data;
// //       // }
// //       );
// //     }
// //     // )
// //     //     .catchError((e) {
// //     //   print('获取文档失败');
// //     // });
// //   // }
// //
// //   ///初始化云开发
// //   init() async {
// //     // 初始化
// //     core = CloudBaseCore.init({'env': 'mm-3ghjbed8e36cf2a7','appAccess': {
// //       // 凭证
// //       'key': 'f421d1f36b363836595e831a3e4e0f53',
// //       // 版本
// //       'version': '1'
// //     },});
// //     // 获取登录对象
// //     auth = CloudBaseAuth(core);
// //     // 唤起匿名登录
// //     await auth.signInAnonymously().then((success) async {
// //       // 登录成功
// //       db = CloudBaseDatabase(core); //初始化数据库
// //       storage = CloudBaseStorage(core); //初始化对象存储
// //       cloudbase = CloudBaseFunction(core); //初始化云函数
// //       setState(() {
// //         flag = true;
// //       });
// //       print('登录成功');
// //     }).catchError((err) {
// //       // 登录失败
// //       setState(() {
// //         flag = false;
// //       });
// //       print('登录失败');
// //     });
// //   }
// //
// //   @override
// //   void initState() {
// //     super.initState();
// //     Future.delayed(Duration.zero, () async {
// //       await init();
// //     });
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text(widget.title),
// //         actions: <Widget>[
// //           Builder(
// //             builder: (BuildContext context) {
// //               return PopupMenuButton(
// //                   onSelected: (String value) async {
// //                     switch (value) {
// //                       // case "上传":
// //                       //   await upload();
// //                       //   break;
// //                       case "查询":
// //                         await getDocument();
// //                         break;
// //                     }
// //                   },
// //                   itemBuilder: (BuildContext context) =>
// //                   <PopupMenuItem<String>>[
// //                     PopupMenuItem(value: "上传", child: Text("对象存储->上传文件")),
// //                     PopupMenuItem(value: "查询", child: Text("云数据库->查询数据")),
// //                   ]);
// //             },
// //           )
// //         ],
// //       ),
// //       body: Center(
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //           children: <Widget>[
// //             Offstage(
// //                 offstage: filePath.length < 1,
// //                 child: Text(
// //                   '文件已上传（来自对象存储）\n' + filePath,
// //                 )),
// //             Text(
// //               dbDocuments.length > 0
// //                   ? '获取到${dbDocuments.length}个文档（来自云数据库）\n' +
// //                   dbDocuments.first['nation']
// //                   : '',
// //             ),
// //             Text(
// //               '你点击了$_counter次加号（来自云函数）',
// //             ),
// //           ],
// //         ),
// //       ),
// //       floatingActionButton: FloatingActionButton(
// //         onPressed: _incrementCounter,
// //         child: Icon(Icons.add),
// //       ),
// //     );
// //   }
// //
// //   @override
// //   void dispose() async {
// //     super.dispose();
// //     //退出登录
// //     await auth?.signOut();
// //   }
//  }


import 'dart:io';
import 'package:flutter/material.dart';
// import 'package:file_picker/file_picker.dart';
import 'package:cloudbase_core/cloudbase_core.dart';
import 'package:cloudbase_auth/cloudbase_auth.dart';
import 'package:cloudbase_function/cloudbase_function.dart';
import 'package:cloudbase_storage/cloudbase_storage.dart';
import 'package:cloudbase_database/cloudbase_database.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter接入腾讯云开发',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter接入腾讯云开发'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  bool flag = false;
  String filePath = '';
  List dbDocuments = [];
  CloudBaseCore core;
  CloudBaseAuth auth;
  CloudBaseDatabase db;
  CloudBaseStorage storage;
  CloudBaseFunction cloudbase;

  ///加号按钮点击事件
  // void _incrementCounter() async {
  //   if (!flag) return;
  //   //调用云函数+1
  //   CloudBaseResponse res =
  //   await cloudbase.callFunction('addOne', {'num': _counter});
  //   setState(() {
  //     _counter = res.data['result'];
  //   });
  // }

  // ///将本地文件上传到cos
  // upload() async {
  //   File file = await FilePicker.getFile();
  //   if (file != null) {
  //     await storage.uploadFile(
  //         cloudPath: file.path.split("/").last, filePath: file.path);
  //     setState(() {
  //       filePath = file.path.split("/").last;
  //     });
  //   }
  // }

  ///查询云数据库文档
  getDocument() async {
    db
        .collection('history')
        .where({'year': '1304'}) //获取date日期为2020-04-20的文档
        .get()
        .then((value) {
      setState(() {
        // dbDocuments = res.data;
        print("value"+"====$value");
      });
    })
        .catchError((e) {
      print('获取文档失败');
    });
  }

  ///初始化云开发
  init() async {
    // 初始化
    core = CloudBaseCore.init({
      // 填写您的云开发 env
      'env': 'mm-3ghjbed8e36cf2a7',
      // 填写您的移动应用安全来源凭证
      // 生成凭证的应用标识必须是 Android 包名或者 iOS BundleID
      'appAccess': {
        // 凭证
        'key': 'f421d1f36b363836595e831a3e4e0f53',
        // 版本
        'version': '1'
      }
    });
    // 获取登录对象
    auth = CloudBaseAuth(core);
    // 唤起匿名登录
    await auth.signInAnonymously().then((success) async {
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
      print('登录失败');
    });
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
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          Builder(
            builder: (BuildContext context) {
              return PopupMenuButton(
                  onSelected: (String value) async {
                    switch (value) {
                      case "上传":
                        // await upload();
                        break;
                      case "查询":
                        await getDocument();
                        break;
                    }
                  },
                  itemBuilder: (BuildContext context) =>
                  <PopupMenuItem<String>>[
                    PopupMenuItem(value: "上传", child: Text("对象存储->上传文件")),
                    PopupMenuItem(value: "查询", child: Text("云数据库->查询数据")),
                  ]);
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Offstage(
                offstage: filePath.length < 1,
                child: Text(
                  '文件已上传（来自对象存储）\n' + filePath,
                )),
            Text(
              dbDocuments.length > 0
                  ? '获取到${dbDocuments.length}个文档（来自云数据库）\n' +
                  dbDocuments.first['letter']
                  : '',
            ),
            Text(
              '你点击了$_counter次加号（来自云函数）',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // onPressed: _incrementCounter,
        child: Icon(Icons.add),
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