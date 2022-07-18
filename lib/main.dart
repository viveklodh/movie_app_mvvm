import 'package:flutter/material.dart';
import 'package:mvvm_demo/pages/movie_list_screen.dart';
import 'package:provider/provider.dart';
import 'viewmodel/movie_list_view_model.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ChangeNotifierProvider(
          create: (context) => MovieListViewModel(),
          child: const MovieListPage(),
        ));
  }
}
