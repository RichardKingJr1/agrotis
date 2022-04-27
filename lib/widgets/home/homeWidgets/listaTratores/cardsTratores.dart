import 'package:agrio/widgets/home/homeWidgets/listaTratores/children/bodyHeader.dart';
import 'package:agrio/widgets/home/homeWidgets/listaTratores/children/singleDouble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../../../../global/globalStore.dart';

class CardsTratores extends StatelessWidget {
  const CardsTratores({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final global = Provider.of<globalStore>(context);
    
    return SafeArea(
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
            ),
            child: Column(
              children: [
                const BodyHeader(),
                Expanded(
                  child: SingleDouble()
                ),
              ],
            ),
          ),
           Observer(builder: (_){
            if(global.zoom){
              return TextButton(
                style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
                onPressed: () => global.zoomToggle(''),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                      Container(
                      height:double.infinity,
                      width:double.infinity,
                      decoration: BoxDecoration(color: Color.fromARGB(179, 158, 158, 158)),
                    ),
                    Image.network(
                      global.imgAds,
                      width: double.infinity,
                      fit:BoxFit.fill
                    ),
                  ],
                ),
              );
            }else{
              return SizedBox(height: 0,);
            }
            
           })
            
        ],
      )
    );
  }
}