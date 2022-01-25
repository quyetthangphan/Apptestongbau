import 'package:flutter/material.dart';

class DesignStreamBuilder extends StatefulWidget {
  @override
  _DesignStreamBuilderState createState() => _DesignStreamBuilderState();
}

class _DesignStreamBuilderState extends State<DesignStreamBuilder> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: _inCreateseCount(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          return Center(
            child: Column(
              children: [
                Text(
                  '${snapshot.data}',
                  style: TextStyle(fontSize: 100, color: Colors.red),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.amber,
                ),
              ],
            ),
          );
        }
        return CircularProgressIndicator();
      },
    );
  }

  Stream<int> _inCreateseCount() async* {
    while (true) {
      await Future.delayed(Duration(seconds: 3));
      yield _count++;
    }
  }
}
