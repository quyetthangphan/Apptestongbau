import 'package:flutter/material.dart';

class LienHePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
          height: size.height * 0.8,
          width: size.width * 0.8,
          child: Column(
            children: [
              Text(
                'LIÊN HỆ CHÚNG TÔI',
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Họ và tên',
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Số điện thoại',
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Nội dung',
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 70,
                width: 300,
                color: Colors.yellow[300],
                child: TextButton(
                  onPressed: () {},
                  child: Text('LIÊN HỆ NGAY'),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 100,
                width: 500,
                color: Colors.grey[300],
                child: Center(child: Text('PHẦN NÀY CHỨA GOOGLE MAP')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
