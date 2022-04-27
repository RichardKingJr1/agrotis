import 'package:flutter/material.dart';

class loadingWidget extends StatelessWidget {
  const loadingWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.network(
              'https://images.unsplash.com/photo-1535649900424-c09963c4fd8e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
              width: double.infinity,
              height: double.infinity,
              fit:BoxFit.fill,
            ),
            Container(
              height:double.infinity,
              width:double.infinity,
              decoration: BoxDecoration(color: Color.fromARGB(179, 39, 68, 54)),
            ),
            Text('AGROTIS', style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.w800))
          ],
        ),
      );
  }
}