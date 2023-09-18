part of 'characters_cubit.dart';

@immutable
class CharactersState {}

class CharactersInitial extends CharactersState {}

// ignore: must_be_immutable
class CharactersLoaded extends CharactersState {

   late List<CharactersModel> charater ;
   CharactersLoaded(this.charater);
}
