import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_demo/model/static/Public.dart';
import 'package:flutter_app_demo/model/static/diaglog.dart';
import 'package:flutter_app_demo/view/component/ListCaNhan/body.dart';
import 'package:flutter_app_demo/view/component/ListCuaHang/body.dart';
import 'package:flutter_app_demo/view/component/TextFieldSearch/body.dart';
import 'package:provider/provider.dart';

class ThongTinQuy extends StatefulWidget {
  @override
  _ThongTinPageState createState() => _ThongTinPageState();
}

class _ThongTinPageState extends State<ThongTinQuy> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return
// Container all
        Center(
      child: Container(
        height: 500,
        width: size.height,
        color: Colors.white,
// Phần Column chức năng
        child: Column(
          children: [
            Row(
              children: [
//CÁ NHÂN
                SizedBox(
                  width: 35,
                ),
                Container(
                  height: 30,
                  width: 150,
                  child: TextButton(
                    onPressed: () {
                      Provider.of<Public>(context, listen: false)
                          .changeInitPageQuy(0);
                    },
                    child: Center(child: Text('CÁ NHÂN')),
                  ),
                ),
// CỬA HÀNG
                SizedBox(
                  height: 70,
                  width: 35,
                ),
                Container(
                  height: 30,
                  width: 150,
                  child: TextButton(
                    onPressed: () {
                      Provider.of<Public>(context, listen: false)
                          .changeInitPageQuy(1);
                    },
                    child: Text("CỬA HÀNG"),
                  ),
                ),
              ],
            ),
//SEARCH
            TextFieldSearch(
              search: (value) {
                Provider.of<Public>(context, listen: false)
                    .changeListQuy(value);
              },
            ),
//ListView.builder
            Container(
                height: 300,
                width: size.width,
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                margin: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                child: Consumer<Public>(
                  builder: (context, value, child) {
                    dynamic list = value.listQuy;
                    return ListView.builder(
                      itemCount: list.length,
                      itemBuilder: (context, index) {
                        return value.initPageQuy == 0
                            ? GestureDetector(
                                onTap: () {
                                  value.login.phoneNumber !=
                                          list[index].phoneNumber
                                      ? Diaglog.showDiaglogItem(context)
                                      : Provider.of<Public>(context,
                                              listen: false)
                                          .changeInitPage(5);
                                },
                                child: ListCaNhan(
                                  stt: list[index].stt,
                                  name: list[index].name,
                                  phoneNumber: list[index].phoneNumber,
                                  moneyNumber: list[index].money,
                                ),
                              )
                            : ListCuaHang(
                                stt: list[index].stt,
                                name: list[index].name,
                                moneyNumber: list[index].money,
                              );
                      },
                    );
                  },
                )),
          ],
        ),
      ),
    );
  }
}
