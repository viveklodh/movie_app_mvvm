import 'dart:convert';
import 'package:http/http.dart' as http;

import '../model/movie_model.dart';

class Webservice {
  Future<List<MovieModel>> fetchMovies(String movie) async {
    final url = "http://www.omdbapi.com/?s=$movie&apikey=eb0d5538";
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      final Iterable json = body["Search"];
      return json.map((movie) => MovieModel.fromJson(movie)).toList();
    } else {
      throw Exception("Unable to perform request!");
    }
  }
}
