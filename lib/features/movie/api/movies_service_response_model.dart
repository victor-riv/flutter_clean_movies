import 'package:clean_framework/clean_framework_defaults.dart';
import 'package:flutter_clean_movies/features/movie/model/movies_entity.dart';

class MoviesServiceResponseModel extends JsonResponseModel {
  final List<MovieEntity> moviesModelList;

  MoviesServiceResponseModel.fromJson(Map<String, dynamic> json)
      : moviesModelList = List<MovieEntity>.from(
          json['results']?.map((movie) => MovieEntity.fromJson(movie)),
        );

  List<Object?> get props => [moviesModelList];
}
