import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Diaglog {
  static Future<void> showDiaglogItem(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text('Thông Báo'),
          content: Text('Bạn không có quyền truy cập vào thông tin này'),
          actions: <Widget>[
            CupertinoDialogAction(
              child: Text('Xác Nhận'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

class ShowPopupItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text('Khong co phep'),
      content: Text('Ban khong co quyen truy cap vao thong tin nay'),
      actions: <Widget>[
        CupertinoDialogAction(
          child: Text('Da Hieu'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
