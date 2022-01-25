import 'package:flutter/material.dart';

class ListCaNhan extends StatelessWidget {
  final int stt;
  final String name;
  final String phoneNumber;
  final String moneyNumber;
  final Image image;
  const ListCaNhan(
      {Key key,
      this.stt,
      this.name,
      this.phoneNumber,
      this.moneyNumber,
      this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
//Container Chứa ListView
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
                offset: Offset(5, 5),
                blurRadius: 15,
                color: Colors.blue.withOpacity(0.2))
          ]),
//Định dạng ListView và lấy giá trị giả
      child: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          Text(
            '$stt',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 12),
          ),
          SizedBox(
            width: 15,
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            decoration: BoxDecoration(
                border: Border(left: BorderSide(color: Colors.grey, width: 1))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$name',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '$phoneNumber',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1.5),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '${moneyNumber}đ',
                  style: TextStyle(
                      color: Colors.yellow[700],
                      fontSize: 12,
                      fontWeight: FontWeight.w700),
                ),
                Container(
                  child: image,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
