import 'package:clean_framework/clean_framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_movies/features/movie/model/movies_view_model.dart';

class MoviesScreen extends Screen {
  final MoviesViewModel? viewModel;
  final Function? navigateToNowPlayingMovies;

  MoviesScreen({this.navigateToNowPlayingMovies, this.viewModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Text("Clean Architecture Movies"),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("See what's playing in a theater near you"),
              TextButton(
                child: Text("Fetch Movies"),
                onPressed: navigateToNowPlayingMovies as void Function()?,
              ),
            ],
          ),
        ));
  }
}
