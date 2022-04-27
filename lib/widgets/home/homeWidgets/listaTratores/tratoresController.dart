import 'package:agrio/widgets/home/repositoryImagens.dart';
import 'package:mobx/mobx.dart';
part 'tratoresController.g.dart';

class tratoresController = tratoresControllerBase with _$tratoresController;

abstract class tratoresControllerBase with Store {

  final RepositoryImagens repository; 
  tratoresControllerBase(this.repository);

  get getItens  => itens;

  @observable
  bool loading = false;

  @observable
  List itens = [];

  @action
  getData() async {
    loading = true;
    //delay para ver loading
    await Future.delayed(Duration(seconds: 1));
    itens = itens + await repository.getImages();
    loading = false;
  }

}