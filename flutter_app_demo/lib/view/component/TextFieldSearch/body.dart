import 'package:flutter/material.dart';

class TextFieldSearch extends StatelessWidget {
  final Function search;
  const TextFieldSearch({Key key, this.search}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    RegExp rex = RegExp("(?:[^a-z]*[a-z]){2}");
    return Container(
      height: 50,
      width: size.width,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
//ICON SEARCH
          Container(
            child: IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ),
// TEXTFIELD SEARCH
          Expanded(
            child: Container(
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'Enter a search'),
                onChanged: search,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
