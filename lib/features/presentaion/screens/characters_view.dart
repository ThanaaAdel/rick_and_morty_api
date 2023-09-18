import 'package:flutter/material.dart';

class CharacterView extends StatelessWidget {
  const CharacterView({super.key});

  @override
  Widget build(BuildContext context) {
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
