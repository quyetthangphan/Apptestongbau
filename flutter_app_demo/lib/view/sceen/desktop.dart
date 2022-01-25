import 'package:flutter/material.dart';
import 'package:flutter_app_demo/model/static/Public.dart';
import 'package:flutter_app_demo/model/static/config.dart';
import 'package:flutter_app_demo/view/component/ScaffoldDesktop/body.dart';
import 'package:provider/provider.dart';

class Desktop extends StatelessWidget {
  const Desktop({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldDesktop(
      child: Consumer<Public>(
        builder: (context, value, child) {
          return Config.page[value.initPage];
        },
      ),
    );
  }
}
