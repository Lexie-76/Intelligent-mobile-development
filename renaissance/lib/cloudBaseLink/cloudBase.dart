import 'dart:ui';
import 'package:cloudbase_core/cloudbase_core.dart';
import 'package:cloudbase_database/cloudbase_database.dart';
import 'package:cloudbase_function/cloudbase_function.dart';
import 'package:cloudbase_storage/cloudbase_storage.dart';


class Global {
  // 单例
  static Global instance = Global();
  // 屏幕信息
  static CloudBaseDatabase db;
  static CloudBaseStorage storage;
  static CloudBaseFunction cloudbase;
  static List userList;
  static String userName;
}