import 'package:flutter/material.dart';
import 'package:flutter_app_demo/view/body.dart';
import 'package:flutter_app_demo/view/component/Login/body.dart';
import 'package:flutter_app_demo/view/sceen/page/CuaHang/body.dart';
import 'package:flutter_app_demo/view/sceen/page/HocBong/body.dart';
import 'package:flutter_app_demo/view/sceen/page/HomeSceen/body.dart';
import 'package:flutter_app_demo/view/sceen/page/LienHe/body.dart';
import 'package:flutter_app_demo/view/sceen/page/Thongtinquy/body.dart';
import 'package:flutter_app_demo/view/sceen/page/TinTuc/body.dart';

class Config {
  //giống kiểu Array chứa các Page
  static List<Widget> page = [
    HomeScreen(),
    ThongTinQuy(),
    CuaHang(),
    TinTuc(),
    LienHePage(),
    HocBong(),
  ];
  static List<Widget> sceen = [Index(), Login()];
}
