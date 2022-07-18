import 'package:flutter/material.dart';
import 'package:mvvm_demo/model/movie_model.dart';

class MovieList extends StatelessWidget {
  final List<MovieModel>? movies;

  MovieList({this.movies});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: movies?.length,
      itemBuilder: (context, index) {
        final movie = movies?[index];

        return ListTile(
          contentPadding: const EdgeInsets.all(10),
          leading: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(movie?.posterUrl ?? "")),
                borderRadius: BorderRadius.circular(6)),
            width: 50,
            height: 100,
          ),
          title: Text(movie?.title ?? ""),
        );
      },
    );
  }
}
