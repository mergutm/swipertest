import 'package:flutter/material.dart';

class MovieProvider extends ChangeNotifier {
  MovieProvider() {
    notificarCambios();
  }

  void notificarCambios() {
    notifyListeners();
  }

  List<int> numeros = [];
  List<String> pokes = [
    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/1.png',
    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/2.png',
    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/3.png',
    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/4.png',
    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/5.png',
  ];
}
