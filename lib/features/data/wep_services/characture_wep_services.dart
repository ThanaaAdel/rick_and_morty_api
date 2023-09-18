
import '../../../core/api_services.dart';
import '../models/characters_model/characters_model.dart';

class CharacturesSevices {
  Future<List<CharactersModel>> getAllCharactures() async {
    List<dynamic> data =
        await Api().get(uri: 'https://rickandmortyapi.com/api/character', token: '');
    List<CharactersModel> listCharacters = [];
    for (int i = 0; i < data.length; i++) {
      listCharacters.add(CharactersModel.fromJson(data[i]));

    }
    return listCharacters;
  }
}
