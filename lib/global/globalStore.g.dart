// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'globalStore.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$globalStore on globalStoreBase, Store {
  late final _$darkModeAtom =
      Atom(name: 'globalStoreBase.darkMode', context: context);

  @override
  bool get darkMode {
    _$darkModeAtom.reportRead();
    return super.darkMode;
  }

  @override
  set darkMode(bool value) {
    _$darkModeAtom.reportWrite(value, super.darkMode, () {
      super.darkMode = value;
    });
  }

  late final _$singleAtom =
      Atom(name: 'globalStoreBase.single', context: context);

  @override
  bool get single {
    _$singleAtom.reportRead();
    return super.single;
  }

  @override
  set single(bool value) {
    _$singleAtom.reportWrite(value, super.single, () {
      super.single = value;
    });
  }

  late final _$zoomAtom = Atom(name: 'globalStoreBase.zoom', context: context);

  @override
  bool get zoom {
    _$zoomAtom.reportRead();
    return super.zoom;
  }

  @override
  set zoom(bool value) {
    _$zoomAtom.reportWrite(value, super.zoom, () {
      super.zoom = value;
    });
  }

  late final _$imgAdsAtom =
      Atom(name: 'globalStoreBase.imgAds', context: context);

  @override
  String get imgAds {
    _$imgAdsAtom.reportRead();
    return super.imgAds;
  }

  @override
  set imgAds(String value) {
    _$imgAdsAtom.reportWrite(value, super.imgAds, () {
      super.imgAds = value;
    });
  }

  late final _$globalStoreBaseActionController =
      ActionController(name: 'globalStoreBase', context: context);

  @override
  void toggleDarkMode(dynamic value) {
    final _$actionInfo = _$globalStoreBaseActionController.startAction(
        name: 'globalStoreBase.toggleDarkMode');
    try {
      return super.toggleDarkMode(value);
    } finally {
      _$globalStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleSingle(dynamic value) {
    final _$actionInfo = _$globalStoreBaseActionController.startAction(
        name: 'globalStoreBase.toggleSingle');
    try {
      return super.toggleSingle(value);
    } finally {
      _$globalStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic zoomToggle(String value) {
    final _$actionInfo = _$globalStoreBaseActionController.startAction(
        name: 'globalStoreBase.zoomToggle');
    try {
      return super.zoomToggle(value);
    } finally {
      _$globalStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
darkMode: ${darkMode},
single: ${single},
zoom: ${zoom},
imgAds: ${imgAds}
    ''';
  }
}
