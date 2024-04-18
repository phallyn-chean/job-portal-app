// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ListStore on _ListStoreBase, Store {
  late final _$listFilterAtom =
      Atom(name: '_ListStoreBase.listFilter', context: context);

  @override
  List<JobModel>? get listFilter {
    _$listFilterAtom.reportRead();
    return super.listFilter;
  }

  @override
  set listFilter(List<JobModel>? value) {
    _$listFilterAtom.reportWrite(value, super.listFilter, () {
      super.listFilter = value;
    });
  }

  late final _$searchAtom =
      Atom(name: '_ListStoreBase.search', context: context);

  @override
  String get search {
    _$searchAtom.reportRead();
    return super.search;
  }

  @override
  set search(String value) {
    _$searchAtom.reportWrite(value, super.search, () {
      super.search = value;
    });
  }

  late final _$controllerInputAtom =
      Atom(name: '_ListStoreBase.controllerInput', context: context);

  @override
  TextEditingController get controllerInput {
    _$controllerInputAtom.reportRead();
    return super.controllerInput;
  }

  @override
  set controllerInput(TextEditingController value) {
    _$controllerInputAtom.reportWrite(value, super.controllerInput, () {
      super.controllerInput = value;
    });
  }

  late final _$_ListStoreBaseActionController =
      ActionController(name: '_ListStoreBase', context: context);

  @override
  void setFilter(String value) {
    final _$actionInfo = _$_ListStoreBaseActionController.startAction(
        name: '_ListStoreBase.setFilter');
    try {
      return super.setFilter(value);
    } finally {
      _$_ListStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listFilter: ${listFilter},
search: ${search},
controllerInput: ${controllerInput}
    ''';
  }
}
