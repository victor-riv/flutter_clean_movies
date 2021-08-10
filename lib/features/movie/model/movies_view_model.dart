import 'package:clean_framework/clean_framework.dart';
import 'package:flutter_clean_movies/features/movie/model/movie_entity.dart';

class MoviesViewModel extends ViewModel {
  final List<MovieEntity> movies;
  final serviceStatus;

  MoviesViewModel(
      {this.movies = const [], this.serviceStatus = ServiceStatus.unknown});

  @override
  List<Object> get props => [movies, serviceStatus];
}

enum ServiceStatus { success, invalid, unknown }
