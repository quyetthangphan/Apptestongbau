import 'package:flutter/material.dart';
import 'package:flutter_app_demo/model/OTD/CaNhanOTD.dart';
import 'package:flutter_app_demo/model/OTD/HocBongOTD.dart';
import 'package:flutter_app_demo/model/static/Public.dart';
import 'package:flutter_app_demo/view/component/ListHocBong/body.dart';
import 'package:provider/provider.dart';

class HocBong extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
          height: size.height,
          width: size.width,
          color: Colors.yellow[300],
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20)),
              Text(
                'NGƯỜI NHẬN HỌC BỖNG',
                style: TextStyle(fontSize: 40),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                height: 500,
                width: size.width,
                child: Consumer<Public>(
                  builder: (context, value, child) {
                    CaNhanOTD data = value.listCaNhan.firstWhere(
                        (element) =>
                            element.phoneNumber == value.login.phoneNumber,
                        orElse: () => null);
                    List<HocBongOTD> list = data.hocBong;
                    return data.hocBong != null
                        ? ListView.builder(
                            itemCount: list.length,
                            itemBuilder: (context, index) {
                              return ListHocBong(
                                stt: index + 1,
                                name: list[index].name,
                                phoneNumber: list[index].phone,
                                moneyReceiver: list[index].money,
                              );
                            },
                          )
                        : Center(
                            child: Text(
                              'Hiện Tại Chưa Có Người Nhận',
                              style: TextStyle(color: Colors.black),
                            ),
                          );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
