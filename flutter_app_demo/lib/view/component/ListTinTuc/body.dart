import 'package:flutter/material.dart';

class ListTinTuc extends StatelessWidget {
  final Image image;
  final String title;
  final String date;
  final String describe;
  const ListTinTuc({Key key, this.image, this.title, this.date, this.describe})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
//Container Chứa ListView
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),

//Định dạng ListView và lấy giá trị giả

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 300,
            width: size.width,
            child: image,
          ),
          Text(title),
          Text(date),
          Text(describe),
        ],
      ),
    );
  }
}
