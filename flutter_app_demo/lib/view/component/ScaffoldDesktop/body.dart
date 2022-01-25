import 'package:flutter/material.dart';

class ScaffoldDesktop extends StatelessWidget {
  final Widget child;
  ScaffoldDesktop({this.child});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          padding: EdgeInsets.only(left: 10),
          child: Text('ÔNG BẦU'),
        ),
      ),
    );
  }
}
