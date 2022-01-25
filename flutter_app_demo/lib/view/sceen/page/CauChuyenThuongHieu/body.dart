import 'package:flutter/material.dart';

class CauChuyenThuongHieu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 100, horizontal: 30),
          height: 300,
          width: 300,
          color: Colors.yellow[300],
          child: Text('Phần này chủ yếu về desig và các text'),
        ),
      ),
    );
  }
}
