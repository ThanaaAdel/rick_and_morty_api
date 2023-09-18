import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../business_logic/cubit/characters_cubit.dart';
import '../../data/models/characters_model/characters_model.dart';

class CharacterView extends StatefulWidget {
  const CharacterView({super.key});

  @override
  State<CharacterView> createState() => _CharacterViewState();
}

class _CharacterViewState extends State<CharacterView> {
  @override
  Widget build(BuildContext context) {
    List<CharactersModel> characters;
    @override
     void initState(){
        super.initState();
    characters = BlocProvider.of<CharactersCubit>(context).getAllCharacters();
     }
    
    return Scaffold(
      body: Column(children: [
        Text(
          "sanaa",
          style: TextStyle(fontSize: 50, color: Colors.black),
        ),
      ]),
    );
  }
}
