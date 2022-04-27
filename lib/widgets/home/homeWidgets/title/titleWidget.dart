import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

Widget titleWidget() {
  return 
  Container(
    padding: EdgeInsets.only(right: 56),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(Icons.add),
        Text('AGROTIS')
      ],
    ),
  );
}