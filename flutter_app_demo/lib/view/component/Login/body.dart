import 'package:flutter/material.dart';
import 'package:flutter_app_demo/model/OTD/CaNhanOTD.dart';
import 'package:flutter_app_demo/model/static/Public.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  final Widget child;
  Login({this.child});
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.yellow[300],
          ),
          Center(
            child: Container(
              height: size.width * 0.9,
              width: size.width * 0.9,
              decoration: // BoxShape.circle == Hình tròn.
                  BoxDecoration(shape: BoxShape.circle, color: Colors.white),
              padding: EdgeInsets.symmetric(
                horizontal: 100,
                vertical: 40,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'SIGN IN',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1.5),
                  ),
                  SizedBox(
                    height: 20,
                    width: 250,
                  ),
                  Container(
                    child: TextField(
                      keyboardType: TextInputType.name,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.account_circle,
                        ),
                        hintText: 'PHONE',
                      ),
                      onChanged: (String value) {
                        List<CaNhanOTD> list =
                            Provider.of<Public>(context, listen: false)
                                .listCaNhan;
                        CaNhanOTD data = list.firstWhere(
                            (element) => element.phoneNumber == value,
                            orElse: () => null);
                        if (data != null) {
                          Provider.of<Public>(context, listen: false)
                              .loginPhone(data);
                          print(data.name);
                          Provider.of<Public>(context, listen: false)
                              .changeInitSceen(0);
                        }
                      },
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  GestureDetector(
                    onTap: () {
                      Provider.of<Public>(context, listen: false)
                          .changeInitSceen(0);
                    },
                    child: Container(
                        height: 50,
                        width: 100,
                        color: Colors.yellow[100],
                        child: Center(
                            child: Text(
                          'Quay Lại',
                          style: TextStyle(fontSize: 15),
                        ))),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
