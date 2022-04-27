// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tratoresController.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$tratoresController on tratoresControllerBase, Store {
  late final _$loadingAtom =
      Atom(name: 'tratoresControllerBase.loading', context: context);

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  late final _$itensAtom =
      Atom(name: 'tratoresControllerBase.itens', context: context);

  @override
  List<dynamic> get itens {
    _$itensAtom.reportRead();
    return super.itens;
  }

  @override
  set itens(List<dynamic> value) {
    _$itensAtom.reportWrite(value, super.itens, () {
      super.itens = value;
    });
  }

  late final _$getDataAsyncAction =
      AsyncAction('tratoresControllerBase.getData', context: context);

  @override
  Future getData() {
    return _$getDataAsyncAction.run(() => super.getData());
  }

  @override
  String toString() {
    return '''
loading: ${loading},
itens: ${itens}
    ''';
  }
}
