import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../../../global/globalStore.dart';

class menuDrawerWidget extends StatefulWidget {
  menuDrawerWidget({ Key? key }) : super(key: key);
  bool tema = false;
  @override
  State<menuDrawerWidget> createState() => _menuDrawerWidgetState();
}

class _menuDrawerWidgetState extends State<menuDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    
    final global = Provider.of<globalStore>(context);

    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 0.3,
            blurRadius: 2,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Observer(builder: (_){
        return Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(5)),
              ),
              child: SwitchListTile(
                activeColor: Colors.green,
                tileColor: Colors.white,
                title: Text('Exibir duas fotos por linha', style: TextStyle(color: Colors.black),),
                value: global.single,
                onChanged: (bool value) => global.toggleSingle(value)
                
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(5)),
              ),
              child: SwitchListTile(
                activeColor: Colors.green,
                tileColor: Colors.grey,
                title: Text('Tema preto', style: TextStyle(color: Colors.black),),
                value: global.darkMode,
                onChanged: (bool value) => global.toggleDarkMode(value)
              ),
            ),
          ],
        );
      })
    );
  }
}