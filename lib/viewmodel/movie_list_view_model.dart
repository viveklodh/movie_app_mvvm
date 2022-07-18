import 'package:flutter/material.dart';
import 'package:mvvm_demo/model/movie_model.dart';
import '../services/service.dart';

class MovieListViewModel extends ChangeNotifier {

  List<MovieModel> movies = [];

  Future<void> fetchMovies(String keyword) async {
    final results = await Webservice().fetchMovies(keyword);
    movies = results
        .map((item) => MovieModel(title: item.title, posterUrl: item.posterUrl))
        .toList();
    notifyListeners();
  }
}
