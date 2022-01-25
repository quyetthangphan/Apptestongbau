import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'sceen/desktop.dart';
import 'sceen/mobile.dart';

class Index extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Index> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 900) {
          return Desktop();
        } else
          return Mobile();
      },
    );
  }
}
