import '../models/characters_model/characters_model.dart';
import '../wep_services/characture_wep_services.dart';

class CharactersRepostory {
  final CharacturesSevices characturesSevices;

  CharactersRepostory(this.characturesSevices);

    Future<List<CharactersModel>> getAllCharactures() async {
final characters  = await characturesSevices.getAllCharactures();
return characters.map((charater) => CharactersModel.fromJson(charater as Map<String, dynamic>)).toList();
      
    }

}