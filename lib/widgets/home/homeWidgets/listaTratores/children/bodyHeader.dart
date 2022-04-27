import 'package:flutter/material.dart';

class BodyHeader extends StatelessWidget {
  const BodyHeader({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
    Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey)
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 3, horizontal: 7),
            color: Colors.grey,
            child: Text('IMAGENS DO AGRONEGÓCIO',
              style: TextStyle(color: Color.fromARGB(255, 59, 59, 59), fontSize: 12),
            ),
          ),
        ],
      )
    );
  }
}