import 'package:flutter/material.dart';
import 'package:flutter_app_demo/view/sceen/page/DesignStreamBuilder/body.dart';

class PageStreamBuilder extends StatefulWidget {
  @override
  _PageStreamBuilderState createState() => _PageStreamBuilderState();
}

class _PageStreamBuilderState extends State<PageStreamBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stream Builder')),
      body: DesignStreamBuilder(),
    );
  }
}
