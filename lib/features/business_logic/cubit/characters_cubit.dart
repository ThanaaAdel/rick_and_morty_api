import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../data/models/characters_model/characters_model.dart';
import '../../data/repositories/characters_repostory.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  CharactersCubit(this.charactersRepostory) : super(CharactersInitial());

  CharactersRepostory charactersRepostory;
  late List<CharactersModel> listOfCharacture;
  List<CharactersModel> getAllCharacters() {
    charactersRepostory.getAllCharactures().then((listOfCharacture) {
      emit(CharactersLoaded(listOfCharacture)) {
        this.listOfCharacture = listOfCharacture;
      }
    });
    return listOfCharacture;
  }
}
