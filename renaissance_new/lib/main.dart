import 'package:cloudbase_auth/cloudbase_auth.dart';
import 'package:cloudbase_core/cloudbase_core.dart';
import 'package:cloudbase_database/cloudbase_database.dart';
import 'package:flutter/material.dart';
import 'package:renaissance_new/mineView/loginView/login.dart';
import 'cloudBaseLink/cloudBase.dart';
import 'communityView/community.dart';
import 'exhibitionView/exhibition.dart';
import 'globalCpns/BottomTabBar.dart';
import 'mineView/mine.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
   //初始化数据库

  // storage = CloudBaseStorage(core); //初始化对象存储
  // cloudbase = CloudBaseFunction(core); //初始化云函数

  runApp(MyApp());
}


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title:"Renaissance",
      theme:ThemeData(
          primaryColor: Colors.blueGrey,
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent
      ),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatefulWidget{
  List dbDocument = [];
  List map = <Map>[];
  @override
  State<StatefulWidget> createState() {
    return FirstPageState();
  }
}

class FirstPageState extends State<FirstPage> {
  init() async {
    bool flag = false;
    CloudBaseCore core = CloudBaseCore.init({
      // 填写您的云开发 env
      'env': 'mm-3ghjbed8e36cf2a7',
      // 填写您的移动应用安全来源凭证
      // 生成凭证的应用标识必须是 Android 包名或者 iOS BundleID
      'appAccess': {
        // 凭证
        'key': '7621a2ec1acb47dbed16fea4f82ee393',
        // 版本
        'version': '1'
      }
    });
    // 获取登录状态
    CloudBaseAuth auth = CloudBaseAuth(core);
    CloudBaseAuthState authState = await auth.getAuthState();

    //唤起匿名登录
    await auth.signInAnonymously().then((success) {
      // 登录成功
      flag = true;
      print('登录成功');
    }).catchError((err) {
      // 登录失败
      flag = false;
      print('登录失败');
    });
    Global.db = CloudBaseDatabase(core);
  }

  getDocument() async{
    Global.db.collection('user').get().then((res){
      setState(() {
        Global.userList = res.data;
      });
      print(Global.userList);
    });



  }

  @override
  void initState(){
    Future.delayed(Duration.zero, () async {
      await init();
      // await getDocument();
    });
  }
  List _pages = [Exhibition(),Community(),Login()];
  var _currentIndex = 0;
  List _bottomTabBarPic = [
    "https://6d6d-mm-3ghjbed8e36cf2a7-1259678626.tcb.qcloud.la/global/exhibition.png?sign=9754082a840b4ba203022c5882d7ee46&t=1625251360",
    "https://6d6d-mm-3ghjbed8e36cf2a7-1259678626.tcb.qcloud.la/global/community.png?sign=3840626bc01e7fcaeb9a2b58a15b4c3a&t=1625251381",
    "https://6d6d-mm-3ghjbed8e36cf2a7-1259678626.tcb.qcloud.la/global/mine.png?sign=89c4ebbd17a88cd57a70aa7114c86545&t=1625251394",
  ];
  List _bottomTabBarPicActive = [
    "https://6d6d-mm-3ghjbed8e36cf2a7-1259678626.tcb.qcloud.la/global/exhibition_active.png?sign=343ab378f81783929fefb58ffdf2a557&t=1625251427",
    "https://6d6d-mm-3ghjbed8e36cf2a7-1259678626.tcb.qcloud.la/global/community_active.png?sign=f1eb25d4176e4fd793097ff463d3a2ce&t=1625251455",
    "https://6d6d-mm-3ghjbed8e36cf2a7-1259678626.tcb.qcloud.la/global/mine_active.png?sign=4aabcc4c453ee56fea07c9882621874b&t=1625251465"
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:this._pages[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        unselectedFontSize: 14,
        items: [
          BottomTabBarItem(_bottomTabBarPic[0], _bottomTabBarPicActive[0], "展览"),
          BottomTabBarItem(_bottomTabBarPic[1], _bottomTabBarPicActive[1], "社区"),
          BottomTabBarItem(_bottomTabBarPic[2], _bottomTabBarPicActive[2], "我的"),
        ],
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }


}

