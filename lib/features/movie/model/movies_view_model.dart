import 'package:clean_framework/clean_framework.dart';
import 'package:flutter_clean_movies/features/movie/model/movie_entity.dart';

class MoviesViewModel extends ViewModel {
  final List<MovieEntity> movies;

  MoviesViewModel({this.movies = const []});

  @override
  List<Object> get props => [movies];
}
