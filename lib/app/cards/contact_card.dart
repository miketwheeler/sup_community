import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//This is the first type of card I tried to make it's non-functional

class ContactCard extends StatelessWidget {
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(4.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Icon(
                Icons.account_box,
                size: 64,
                color: Colors.grey,
              )
            ),
          ),
        ],
      ),
    );
  }
}
