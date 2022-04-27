import 'package:agrio/global/globalStore.dart';
import 'package:agrio/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';


void  main() {

  test('botoes devem realizar toggle', () {

    final instancia = globalStore();

    expect(instancia.darkMode, equals(false));
    expect(instancia.single, equals(false));

    instancia.toggleDarkMode(true);
    instancia.toggleSingle(true);

    expect(instancia.darkMode, equals(true));
    expect(instancia.single, equals(true));

    instancia.toggleDarkMode(false);
    instancia.toggleSingle(false);

    expect(instancia.darkMode, equals(false));
    expect(instancia.single, equals(false));
  });

}