import 'package:flutter/material.dart';

class DrawerHeaderWidget extends StatelessWidget {
  const DrawerHeaderWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      child: ListTile(
        title: Text('Configurações', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
        trailing: TextButton(
          child: Icon(Icons.close, color: Colors.grey,),
          onPressed: (){
             Navigator.pop(context);
          },
        ),
      ),
    );
  }
}