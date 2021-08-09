import 'package:clean_framework/clean_framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_movies/features/movie/model/movies_view_model.dart';

class MoviesScreen extends Screen {
  final MoviesViewModel? viewModel;
  final Function? onLoadMoviesTap;

  MoviesScreen({this.onLoadMoviesTap, this.viewModel});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        child: Text("Load Movies"),
        onPressed: onLoadMoviesTap as void Function()?,
      ),
    );
  }
}
