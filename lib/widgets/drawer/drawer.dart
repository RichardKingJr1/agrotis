
import 'package:agrio/global/theme.dart';
import 'package:agrio/widgets/drawer/drawerWidgets/header.dart';
import 'package:agrio/widgets/drawer/drawerWidgets/menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../../global/globalStore.dart';

class menuDrawer extends StatelessWidget {
  const menuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final global = Provider.of<globalStore>(context);

    return Drawer(
      child: ListView(
        children: [
          DrawerHeaderWidget(),
          Observer(
            builder: (_) {
              return Container(
                decoration: global.darkMode ? myTheme.dark['background'] : myTheme.light['background'],
                child: menuDrawerWidget());
            }
          )
        ],
      ),
    );
  }

}
