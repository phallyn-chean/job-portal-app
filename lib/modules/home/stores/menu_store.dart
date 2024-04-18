import 'package:mobx/mobx.dart';
part 'menu_store.g.dart';

class MenuStore = _MenuStoreBase with _$MenuStore;

abstract class _MenuStoreBase with Store {
  final List<String> menus = [
    'Discover',
    'Saved',
    'Applied',
    'Closed',
    'Discarded',
  ];

  @observable
  String selectMenu = 'Discover';

  @action
  void changeSelectedMenu(String newSelected) {
    selectMenu = newSelected;
  }
}
