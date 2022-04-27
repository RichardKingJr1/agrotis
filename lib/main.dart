import 'package:agrio/global/theme.dart';
import 'package:agrio/widgets/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
import './global/globalStore.dart';

void main() {
  runApp(
    const AppProviders(
      child: MyApp(),
    )
  );
}

class AppProviders extends StatelessWidget {
  final Widget child;
  const AppProviders({ Key? key, required this.child }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers: [
        Provider(create: (_) =>  globalStore())
      ],
      child: child
    );
  }
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final global = Provider.of<globalStore>(context);

    return Observer(builder: (_){
        return MaterialApp(
          title: 'Flutter Demo',
          theme: global.darkMode ? myTheme.darkTheme : myTheme.lightTheme,
          home: const Home(),
        );
      }
    );
  }
}


