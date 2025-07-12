import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:myapp/models/movie_response.dart';

class MovieProvider extends ChangeNotifier {
  final List<dynamic> nowPlaying = [];
  final String dominio = 'api.themovie.org';
  final String _apiKey = '3e531a72884b7a2a73f4f5b8df0506e5';
  final String language = 'es-MX';
  final String segmento = '3/movie/now_playing';

  Future getMoviesNowPlaying() async {
    final url = Uri.https(dominio, segmento, {
      'api_key': _apiKey,
      'language': language,
    });

    final response = await http.get(url);
    return response.body;
  }

  void getOneMovie() async {
    final respuesta = await getMoviesNowPlaying();

    var jsonResponse = convert.jsonDecode(respuesta) as Map<String, dynamic>;
    final movieResponse = MovieResponse.fromJson(jsonResponse);
    //nowPlaying = [...nowPlaying, ...movieResponse.results];
    nowPlaying = movieResponse.results;
    notifyListeners();
  }

  MovieProvider() {
    notificarCambios();
  }

  void notificarCambios() {
    notifyListeners();
  }

  void increase() {
    int total = pokes.length + 1;
    pokes.add(
      "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/$total.png",
    );
  }

  List<String> pokes = [
    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/1.png',
    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/2.png',
  ];
}


// https://image.tmdb.org/t/p/w500