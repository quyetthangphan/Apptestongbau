import 'package:flutter/material.dart';
import 'package:flutter_app_demo/model/static/Public.dart';
import 'package:provider/provider.dart';

class ScaffoldMobile extends StatefulWidget {
  final Widget child;
  ScaffoldMobile({this.child});
  @override
  _ScaffoldMobileState createState() => _ScaffoldMobileState();
}

class _ScaffoldMobileState extends State<ScaffoldMobile> {
  double _height = 0;
  double _width = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    _width = size.width;
    return Scaffold(
//AppBar
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            setState(() {
              _height = _height == 0 ? size.height : 0;
            });
          },
//MENU
          child: Container(
            height: double.infinity,
            color: Colors.white,
            child: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ),
//HOME Ong bau
        title: GestureDetector(
          onTap: () {
            Provider.of<Public>(context, listen: false).changeInitPage(0);
          },
          child: Text(
            'ÔNG BẦU',
            style: TextStyle(color: Colors.black),
          ),
        ),
// ACTIONS
        actions: [
          Consumer<Public>(
            builder: (context, value, child) {
              return value.login != null
                  ? Padding(
                      padding:
                          const EdgeInsets.only(top: 5, bottom: 5, right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '${value.login.name}',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w300,
                                letterSpacing: 1.5,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '${value.login.money}đ',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w300,
                                letterSpacing: 1.5,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  : GestureDetector(
                      onTap: () {
                        String phone =
                            Provider.of<Public>(context, listen: false).login ==
                                    null
                                ? ''
                                : Provider.of<Public>(context, listen: false)
                                    .login
                                    .phoneNumber;
                        if (phone == '') {
                          Provider.of<Public>(context, listen: false)
                              .changeInitSceen(1);
                        }
                      },
                      child: Container(
                        height: double.infinity,
                        color: Colors.white,
                        margin: EdgeInsets.only(right: 20),
                        child: Icon(
                          Icons.person_outline,
                          color: Colors.black,
                          size: 32,
                        ),
                      ),
                    );
            },
          ),
        ],
      ),
//BODY
      body: Container(
        height: size.height,
        width: size.width,
        color: Colors.yellow[300],
//STACK
        child: Stack(
          children: [
            widget.child,
//AnimatedContainer
            AnimatedContainer(
              duration: Duration(milliseconds: 1000),
              curve: Curves.fastLinearToSlowEaseIn,
              height: _height,
              width: _width,
              color: Colors.white,
//COLUMN
              child: Column(
                children: [
                  //Câu chuyện thương hiệu
                  GestureDetector(
                    onTap: () {
                      Provider.of<Public>(context, listen: false)
                          .changeInitPage(3);
                    },
                    child: ListMenu(
                      size: size,
                      nameMenu: 'CÂU CHUYỆN THƯƠNG HIỆU',
                    ),
                  ),
                  // Sản phẩm
                  GestureDetector(
                    onTap: () {
                      Provider.of<Public>(context, listen: false)
                          .changeInitPage(3);
                    },
                    child: ListMenu(
                      size: size,
                      nameMenu: 'SẢN PHẨM',
                    ),
                  ),

                  // Cửa hàng
                  GestureDetector(
                    onTap: () {
                      Provider.of<Public>(context, listen: false)
                          .changeInitPage(2);
                    },
                    child: ListMenu(
                      size: size,
                      nameMenu: 'CỬA HÀNG',
                    ),
                  ),
                  // Tin Tức
                  GestureDetector(
                    onTap: () {
                      Provider.of<Public>(context, listen: false)
                          .changeInitPage(3);
                    },
                    child: ListMenu(
                      size: size,
                      nameMenu: 'TIN TỨC',
                    ),
                  ),
                  // Liên Hệ
                  GestureDetector(
                    onTap: () {
                      Provider.of<Public>(context, listen: false)
                          .changeInitPage(4);
                    },
                    child: ListMenu(
                      size: size,
                      nameMenu: 'LIÊN HỆ',
                    ),
                  ),
                  //Hợp tác kinh doanh
                  GestureDetector(
                    onTap: () {},
                    child: ListMenu(
                      size: size,
                      nameMenu: 'HỢP TÁC KINH DOANH',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ListMenu extends StatelessWidget {
  final nameMenu;
  const ListMenu({Key key, @required this.size, this.nameMenu})
      : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return
//CÂU CHUYỆN THƯƠNG HIỆU
        Container(
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      //height: 50,

      width: size.width,
      child: Text(
        '$nameMenu',
        style: TextStyle(color: Colors.black, fontSize: 18),
      ),
    );
  }
}
