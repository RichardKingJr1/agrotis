import 'package:agrio/widgets/home/repositoryImagens.dart';
import 'package:flutter_test/flutter_test.dart';


void  main() {
  
  final repository = RepositoryImagens();

  test('Deve pegar os itens recebis pelo http e confirmar se eles estão corretos', () async {

    final List itens = await repository.getImages();

    expect(itens.isNotEmpty, equals(true));
    expect(itens[0]['user']['profile_image']['medium'], isA<String>());
    expect(itens[0]['user']['profile_image']['large'], isA<String>());

  });

}