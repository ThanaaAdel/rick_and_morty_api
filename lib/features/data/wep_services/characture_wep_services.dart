import '../../../core/api_services.dart';
import '../models/characters/characters.dart';

class CharacturesSevices {
  Future<List<Characters>> getAllCharactures() async {
    List<dynamic> data = await Api()
        .get(uri: 'https://rickandmortyapi.com/api/character', token: '');
    List<Characters> listProduct = [];
    for (int i = 0; i < data.length; i++) {
      listProduct.add(Characters.fromJson(data[i]));
    }
    return listProduct;
  }
}
