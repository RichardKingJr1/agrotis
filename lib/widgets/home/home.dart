import 'package:agrio/global/theme.dart';
import 'package:agrio/widgets/drawer/drawer.dart';
import 'package:agrio/widgets/home/homeWidgets/listaTratores/cardsTratores.dart';
import 'package:agrio/widgets/home/homeWidgets/loading.dart';
import 'package:agrio/widgets/home/homeWidgets/title/titleWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../../global/globalStore.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  //simulação de carregamento inicial para apresentar loadingpage
  bool loading = false;

  @override
  void initState() {
    carregamento();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    final global = Provider.of<globalStore>(context);

    if(loading){
      return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: titleWidget()
      ),
      drawer: menuDrawer(),
      body:  Observer(builder: (_){
        return Container(
          decoration: global.darkMode ? myTheme.dark['background'] : myTheme.light['background'],
          child: CardsTratores()
        );
      })
    );
    }else{
      return loadingWidget();
    }
    
  }

  //função para simular um carregamento inicial do aplicativo, o mobx não foi utilizado nessa parte do código por uma questão de tempo.
  carregamento() async{
    await Future.delayed(Duration(seconds: 1));
    
    setState(() {
      loading = true;
    });
    
  }
}
