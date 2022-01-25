import 'package:flutter/material.dart';

class ListViewUI extends StatefulWidget {
  final int itemCount;
  final Widget child;
  ListViewUI({this.child, this.itemCount});
  @override
  _ListViewUIState createState() => _ListViewUIState();
}

class _ListViewUIState extends State<ListViewUI> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.itemCount,
      itemBuilder: (context, index) {
        return widget.child;
      },
    );
  }
}
