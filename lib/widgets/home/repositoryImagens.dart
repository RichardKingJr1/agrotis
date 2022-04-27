import 'dart:convert';

import 'package:http/http.dart' as http;

class RepositoryImagens {

  final url = Uri.parse('https://api.unsplash.com/photos/random?count=10&client_id=h4PipzWI1TmxTMYJopPW6nTz__vSexKrxmaJRAx6l0E');

  Future getImages() async{

    final response = await http.get(url);

    if(response.statusCode == 200){
      var itens = jsonDecode(utf8.decode(response.bodyBytes));

      return itens;
    }else{
      print('Error');
      return [];
    }

    
  }
}