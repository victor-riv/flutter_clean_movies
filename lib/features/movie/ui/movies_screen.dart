import 'package:clean_framework/clean_framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_movies/features/movie/model/movie_entity.dart';
import 'package:flutter_clean_movies/features/movie/model/movies_view_model.dart';

class MoviesScreen extends Screen {
  final MoviesViewModel viewModel;
  final Function? navigateToNowPlayingMovies;

  MoviesScreen({this.navigateToNowPlayingMovies, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Text("Clean Architecture Movies"),
        ),
        body: viewModel.movies.isEmpty
            ? HomeView(navigateToNowPlayingMovies)
            : MoviesList(viewModel.movies));
  }
}

Widget HomeView(Function? navigateToNowPlayingMovies) {
  return Container(
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
  );
}

Widget MoviesList(List<MovieEntity> movies) {
  return ListView.builder(
      itemCount: movies.length,
      itemBuilder: (context, index) {
        final movie = movies[index];

        return ListTile(
          contentPadding: const EdgeInsets.all(10),
          leading: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://image.tmdb.org/t/p/original/${movie.posterPath}")),
                borderRadius: BorderRadius.circular(6)),
            width: 50,
            height: 100,
          ),
          title: Text(movie.originalTitle),
        );
      });
}
