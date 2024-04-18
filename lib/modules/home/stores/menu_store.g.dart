// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MenuStore on _MenuStoreBase, Store {
  late final _$selectMenuAtom =
      Atom(name: '_MenuStoreBase.selectMenu', context: context);

  @override
  String get selectMenu {
    _$selectMenuAtom.reportRead();
    return super.selectMenu;
  }

  @override
  set selectMenu(String value) {
    _$selectMenuAtom.reportWrite(value, super.selectMenu, () {
      super.selectMenu = value;
    });
  }

  late final _$_MenuStoreBaseActionController =
      ActionController(name: '_MenuStoreBase', context: context);

  @override
  void changeSelectedMenu(String newSelected) {
    final _$actionInfo = _$_MenuStoreBaseActionController.startAction(
        name: '_MenuStoreBase.changeSelectedMenu');
    try {
      return super.changeSelectedMenu(newSelected);
    } finally {
      _$_MenuStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectMenu: ${selectMenu}
    ''';
  }
}
