import 'package:flutter/material.dart';
import 'package:flutter_app_demo/model/static/Public.dart';
import 'package:flutter_app_demo/model/static/config.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Anton',
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
        create: (context) => Public(),
        builder: (context, child) {
          return Consumer<Public>(
            builder: (context, value, child) {
              return Config.sceen[value.initSceen];
            },
          );
        },
      ),
    );
  }
}
