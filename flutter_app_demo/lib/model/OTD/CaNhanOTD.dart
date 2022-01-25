import 'package:flutter_app_demo/model/OTD/HocBongOTD.dart';

class CaNhanOTD {
  int stt;
  String name;
  String phoneNumber;
  String money;
  String moneyReceiver;
  List<HocBongOTD> hocBong;

  CaNhanOTD(
      {this.money,
      this.name,
      this.phoneNumber,
      this.stt,
      this.moneyReceiver,
      this.hocBong});
}
