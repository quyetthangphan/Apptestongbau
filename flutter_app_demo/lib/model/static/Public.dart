import 'package:flutter/material.dart';
import 'package:flutter_app_demo/model/OTD/CaNhanOTD.dart';
import 'package:flutter_app_demo/model/OTD/CuaHangOTD.dart';
import 'package:flutter_app_demo/model/OTD/HocBongOTD.dart';
import 'package:flutter_app_demo/model/OTD/TinTucOTD.dart';

// Thay đổi initPage(index)
class Public extends ChangeNotifier {
  List<CaNhanOTD> listCaNhan = [
    CaNhanOTD(
      stt: 1,
      name: "Nguyen Thi Nga",
      phoneNumber: '01643131443',
      money: '1.000.000',
      hocBong: [],
    ),
    CaNhanOTD(
        stt: 2,
        name: "Nguyen Minh Son",
        phoneNumber: '0946734111',
        money: '500.000',
        hocBong: [
          HocBongOTD(name: 'Nga Nguyen', phone: '01643131443', money: '10.000'),
          HocBongOTD(
              name: 'Phan Quyet Thang', phone: '0789429140', money: '132.000')
        ]),
    CaNhanOTD(
        stt: 3,
        name: "Phan Quyet Thang",
        phoneNumber: '0789429140',
        money: '10.000',
        hocBong: null),
    CaNhanOTD(
        stt: 4,
        name: "Nguyen Long Ba",
        phoneNumber: '0382292563',
        money: '1.000.000.000',
        hocBong: [
          HocBongOTD(
              name: 'Nguyen Van A', phone: '312321312', money: '10.000.000'),
          HocBongOTD(name: 'Nguyen Van B', phone: '12312312', money: '1.000')
        ]),
  ];

  List<CuaHangOTD> listCuaHang = [
    CuaHangOTD(stt: 1, name: "Nguyen Thi Nga", money: '312312'),
    CuaHangOTD(stt: 2, name: "Nguyen Minh Son", money: '312312'),
    CuaHangOTD(stt: 3, name: "Phan Quyet Thang", money: '312312'),
    CuaHangOTD(stt: 4, name: "Nguyen Long Ba", money: '312312'),
  ];

  List<TinTucOTD> listTinTuc = [
    TinTucOTD(
        image: Image.network(
            'https://file-ongbaucf.bigin.top/Bbcommerce/Contents/Content_20210310065402_7a6ef463-025e-4db8-a89a-dc52d5920af8.jpg'),
        title: 'CỬA HÀNG BÁN SẢN PHẨM OB CAFÉ - CÀ PHÊ SỮA ĐÁ',
        date: '26/03/2021',
        describe:
            'Sản phẩm Cà Phê Sữa Đá Hoà Tan đã có mặt ở rất nhiều cửa hàng Cà Phê Ông Bầu rồi, bạn có thể đến ngay các cửa hàng trong danh sách bên dưới để mua nhé!!'),
    TinTucOTD(
        image: Image.network(
            'https://file-ongbaucf.bigin.top/Bbcommerce/Contents/Content_20210310065402_7a6ef463-025e-4db8-a89a-dc52d5920af8.jpg'),
        title: 'CỬA HÀNG BÁN SẢN PHẨM OB CAFÉ - CÀ PHÊ SỮA ĐÁ',
        date: '26/03/2021',
        describe:
            'Sản phẩm Cà Phê Sữa Đá Hoà Tan đã có mặt ở rất nhiều cửa hàng Cà Phê Ông Bầu rồi, bạn có thể đến ngay các cửa hàng trong danh sách bên dưới để mua nhé!!')
  ];

  List<TinTucOTD> listKhuyenMai = [
    TinTucOTD(
        image: Image.network(
            'https://file-ongbaucf.bigin.top/Bbcommerce/Contents/Content_20210401032123_e68f266e-79e1-4b6e-8a87-b87447f2e9df.jpg'),
        title: 'CỬA HÀNG BÁN SẢN PHẨM OB CAFÉ - CÀ PHÊ SỮA ĐÁ',
        date: '26/03/2021',
        describe:
            'Sản phẩm Cà Phê Sữa Đá Hoà Tan đã có mặt ở rất nhiều cửa hàng Cà Phê Ông Bầu rồi, bạn có thể đến ngay các cửa hàng trong danh sách bên dưới để mua nhé!!'),
    TinTucOTD(
        image: Image.network(
            'https://file-ongbaucf.bigin.top/Bbcommerce/Contents/Content_20210401032123_e68f266e-79e1-4b6e-8a87-b87447f2e9df.jpg'),
        title: 'CỬA HÀNG BÁN SẢN PHẨM OB CAFÉ - CÀ PHÊ SỮA ĐÁ',
        date: '26/03/2021',
        describe:
            'Sản phẩm Cà Phê Sữa Đá Hoà Tan đã có mặt ở rất nhiều cửa hàng Cà Phê Ông Bầu rồi, bạn có thể đến ngay các cửa hàng trong danh sách bên dưới để mua nhé!!')
  ];

  int initPage = 0;
  int initSceen = 0;
  int initPageQuy = 0;

  dynamic listQuy = [];
  dynamic listPageTinTuc = [];
  dynamic listNhanHocBong = [];
  CaNhanOTD login = null;
  void changeInitPage(int i) {
    initPage = i;
    notifyListeners(); //luôn luôn có vì nó làm cho chương trình lắng nghe
  }

  void loginPhone(CaNhanOTD data) {
    login = data;
    notifyListeners();
  }

  void changeInitPageQuy(int i) {
    if (i == 0) {
      listQuy = listCaNhan;
    } else
      listQuy = listCuaHang;
    initPageQuy = i;
    notifyListeners(); //luôn luôn có vì nó làm cho chương trình lắng nghe
  }

  void changeInitSceen(int i) {
    initSceen = i;
    notifyListeners();
  }

  void changeListQuy(String value) {
    listQuy = [];
    dynamic listAll = initPageQuy == 0 ? listCaNhan : listCuaHang;
    for (int i = 0; i < listAll.length; i++) {
      if (listAll[i].name.contains(value)) {
        listQuy.add(listAll[i]);
      }
    }
    notifyListeners();
  }

  //PHẦN THÂY ĐỔI TIN TỨC

  void changeInitPageTinTuc(int i) {
    if (i == 0) {
      listPageTinTuc = listTinTuc;
    } else {
      listPageTinTuc = listKhuyenMai;
    }
    initPageQuy = i;
    notifyListeners();
  }
}
