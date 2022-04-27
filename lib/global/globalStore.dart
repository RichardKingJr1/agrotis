import 'package:mobx/mobx.dart';
part 'globalStore.g.dart';

class globalStore = globalStoreBase with _$globalStore;

abstract class globalStoreBase with Store {
  
  @observable
  bool darkMode = false;

  @action
  void toggleDarkMode(value){
    darkMode = value;
  }


  @observable
  bool single = false;

  @action
  void toggleSingle(value){
    single = value;
  }

  @observable
  bool zoom = false;

  @observable
  String imgAds = '';

  @action
  zoomToggle(String value){
    zoom = !zoom;
    imgAds = value;
  }

}