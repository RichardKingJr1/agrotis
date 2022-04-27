import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:agrio/widgets/home/homeWidgets/listaTratores/tratoresController.dart';
import 'package:agrio/widgets/home/repositoryImagens.dart';

import '../../../../../global/globalStore.dart';

class SingleDouble extends StatefulWidget {

  SingleDouble({ Key? key }) : super(key: key);

  @override
  State<SingleDouble> createState() => _SingleDoubleState();
}

class _SingleDoubleState extends State<SingleDouble> {

  tratoresController instance = tratoresController(RepositoryImagens());
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    instance.getData();
    super.initState();
    _scrollController.addListener(() {
      if(_scrollController.position.pixels >= _scrollController.position.maxScrollExtent){
        instance.getData();
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    final global = Provider.of<globalStore>(context);
    
    return Observer(builder: (_){

      return Stack(
        alignment: Alignment.center,
        children: [  
          if(!global.single)
            Container(
              margin: EdgeInsets.only(bottom: 5),
              child: ListView.builder(
                  controller: _scrollController,
                  itemCount: instance.itens.length,
                  itemBuilder: (BuildContext context, int i) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 15),
                      child: TextButton(
                        onPressed: () => global.zoomToggle(instance.itens[i]['user']['profile_image']['large']),
                        style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
                        child:  Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(3.0),
                              child: Image.network(
                                  instance.itens[i]['user']['profile_image']['medium'],
                                  fit:BoxFit.fill,
                                  width: double.infinity,
                                ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: global.darkMode ? Colors.black : Colors.green,
                                borderRadius: BorderRadius.all(Radius.circular(3)),
                              ),
                              margin: EdgeInsets.only(right: 15,bottom: 15),
                              padding: EdgeInsets.all(5),
                              child: Icon(Icons.zoom_in, color: Colors.white,),
                            )
                          ],
                        )
                      ),
                    );  
                  }
                ),
            )
          else
            Container(
              margin: EdgeInsets.only(bottom: 5),
              child: GridView.builder(
                controller: _scrollController,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                ), 
                itemCount: instance.itens.length,
                itemBuilder: (BuildContext context, int i) {
                  return  TextButton(
                    onPressed: () => global.zoomToggle(instance.itens[i]['user']['profile_image']['large']),
                    style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(3.0),
                          child: Image.network(
                            instance.itens[i]['user']['profile_image']['medium'],
                            height: double.infinity,
                            width: double.infinity,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          decoration:  BoxDecoration(
                            color: global.darkMode ? Colors.black : Colors.green,
                            borderRadius: BorderRadius.all(Radius.circular(3)),
                          ),
                          margin: EdgeInsets.only(right: 15,bottom: 15),
                          padding: EdgeInsets.all(5),
                          child: Icon(Icons.zoom_in, color: Colors.white,),
                        ),
                      ],
                    )
                  );
                }
              ),
            ),

          if(instance.loading)
            Positioned(
              bottom: 0,
              child: Container(
                width: 15,
                height: 15,
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            ), 
        ],
      );
    });
  }
}