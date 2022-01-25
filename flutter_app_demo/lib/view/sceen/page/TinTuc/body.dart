import 'package:flutter/material.dart';
import 'package:flutter_app_demo/model/static/Public.dart';
import 'package:flutter_app_demo/view/component/ListTinTuc/body.dart';
import 'package:provider/provider.dart';

class TinTuc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 40)),
            Row(
              // Button Tin Tức
              children: [
                GestureDetector(
                  onTap: () {
                    Provider.of<Public>(context, listen: false)
                        .changeInitPageTinTuc(0);
                  },
                  child: Container(
                    alignment: AlignmentDirectional.center,
                    height: 50,
                    width: 80,
                    color: Colors.blue,
                    child: Text('Tin Tức'),
                  ),
                ),
                // Button Khuyến Mãi
                GestureDetector(
                  onTap: () {
                    Provider.of<Public>(context, listen: false)
                        .changeInitPageTinTuc(1);
                  },
                  child: Container(
                    alignment: AlignmentDirectional.center,
                    height: 50,
                    width: 80,
                    color: Colors.red,
                    child: Text('Khuyến Mãi'),
                  ),
                ),
              ],
            ),
            Container(
              height: 500,
              width: size.width,
              child: Consumer<Public>(
                builder: (context, value, child) {
                  dynamic list = value.listPageTinTuc;
                  return ListView.builder(
                    itemCount: list.length,
                    itemBuilder: (context, index) {
                      return value.initPageQuy == 0
                          ? ListTinTuc(
                              image: list[index].image,
                              title: list[index].title,
                              date: list[index].date,
                              describe: list[index].describe,
                            )
                          : ListTinTuc(
                              image: list[index].image,
                              title: list[index].title,
                              date: list[index].date,
                              describe: list[index].describe,
                            );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
