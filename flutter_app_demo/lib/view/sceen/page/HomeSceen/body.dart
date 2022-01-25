import 'package:flutter/material.dart';
import 'package:flutter_app_demo/model/OTD/CaNhanOTD.dart';
import 'package:flutter_app_demo/model/static/Public.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String funcSumValue(List<CaNhanOTD> listSumValue) {
    int arr = 0;
    for (var i = 0; i < listSumValue.length; i++) {
      String phanTu = listSumValue[i].money;
      int value = funcRemove(phanTu);
      arr += value;
    }
    String reStr = writedPrice(arr);
    return reStr;
  }

  String writedPrice(int arr) {
    String str = '';
    for (int i = '$arr'.length - 1; i >= 0; i--) {
      str += (i - 1) % 3 == 0 ? '.' + '$arr'[i] : '$arr'[i];
    }
    String reStr = '';
    for (int i = str.length - 1; i >= 0; i--) {
      reStr += str[i];
    }
    return reStr;
  }

  int funcRemove(String phanTu) {
    List<String> lStr = phanTu.split('.');
    String str = '';
    lStr.forEach((element) {
      str += element;
    });
    int remove = int.parse(str);
    return remove;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Column(
        children: [
          Center(
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: size.width * 0.8,
                  margin: EdgeInsets.symmetric(horizontal: 70, vertical: 70),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black,
                      style: BorderStyle.solid,
                      width: 1.0,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Center(
                          child: Consumer<Public>(
                            builder: (context, value, child) {
                              return Text(
                                funcSumValue(value.listCaNhan),
                                style: TextStyle(
                                  height: size.height * 0.0,
                                  fontWeight: FontWeight.w700,
                                  fontSize: size.width * 0.08,
                                  shadows: [
                                    Shadow(
                                      color: Colors.black.withOpacity(1),
                                      offset: Offset(1, 3),
                                      blurRadius: 0,
                                    ),
                                    Shadow(
                                      color: Colors.yellow.withOpacity(1),
                                      offset: Offset(1, 2),
                                      blurRadius: 3,
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 35, 35, 35),
                        alignment: Alignment.topLeft,
                        child: Text(
                          'VNĐ',
                          style: TextStyle(
                            fontSize: size.width * 0.03,
                            height: size.height * 0.0,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),
                ContainerMenu(
                  text: 'Thong Tin Quy',
                  press: () {
                    Provider.of<Public>(context, listen: false)
                        .changeInitPage(1);
                    Provider.of<Public>(context, listen: false)
                        .changeInitPageQuy(0);
                  },
                ),
                ContainerMenu(
                  text: 'Cua Hang Dong Gop',
                  press: () {
                    // phần thay đổi initPage
                    //nhớ add Provider
                    Provider.of<Public>(context, listen: false)
                        .changeInitPage(1);
                    Provider.of<Public>(context, listen: false)
                        .changeInitPageQuy(1);
                  },
                ),
                ContainerMenu(
                  text: 'Tai nang Uom Mam',
                  press: () {
                    // phần thay đổi initPage
                    //nhớ add Provider
                    Provider.of<Public>(context, listen: false)
                        .changeInitPage(2);
                    Provider.of<Public>(context, listen: false)
                        .changeInitPageQuy(1);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ContainerMenu extends StatelessWidget {
  final String text;
  final Function press;
  const ContainerMenu({Key key, this.press, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 3),
                    blurRadius: 5,
                    color: Colors.white.withOpacity(0.3))
              ]),
          child: Center(
              child: Text(
            '$text',
            style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w300,
                letterSpacing: 2),
          )),
        ),
        onTap: press);
  }
}

class HomeSceenDesktop extends StatefulWidget {
  @override
  _HomeSceenDesktopState createState() => _HomeSceenDesktopState();
}

class _HomeSceenDesktopState extends State<HomeSceenDesktop> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          children: [Text('Hello')],
        ),
      ),
    );
  }
}
