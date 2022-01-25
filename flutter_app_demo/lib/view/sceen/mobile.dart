import 'package:flutter/material.dart';
import 'package:flutter_app_demo/model/static/Public.dart';
import 'package:flutter_app_demo/model/static/config.dart';
import 'package:flutter_app_demo/view/component/ScaffoldMobile/body.dart';
import 'package:provider/provider.dart';

class Mobile extends StatelessWidget {
  const Mobile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldMobile(
      // LẮng NGHE sự thay đổi của value.init page làm setState lại chương trình
      child: Consumer<Public>(
        builder: (context, value, child) {
          // gọi giá trị khác tại vì có file Config
          //Config.page[value.initPage];
          return Config.page[value.initPage];
        },
      ),
    );
  }
}
