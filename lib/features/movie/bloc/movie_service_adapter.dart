import 'package:clean_framework/clean_framework.dart';
import 'package:clean_framework/src/defaults/json_service.dart';
import 'package:flutter_clean_movies/features/movie/api/movie_service.dart';
import 'package:flutter_clean_movies/features/movie/api/movie_service_request_model.dart';
import 'package:flutter_clean_movies/features/movie/api/movie_service_response_model.dart';
import 'package:flutter_clean_movies/features/movie/model/movie_entity.dart';

class MovieServiceAdapter extends ServiceAdapter<MovieEntity,
    MovieServiceRequestModel, MovieServiceResponseModel, MovieService> {
  MovieServiceAdapter(MovieService service) : super(MovieService());

  @override
  MovieServiceRequestModel createRequest(MovieEntity entity) {
    return MovieServiceRequestModel(apiKey: entity.apiKey);
  }

  @override
  MovieEntity createEntity(
      Entity initialEntity, JsonResponseModel responseModel) {
    return initialEntity.merge(errors: <EntityFailure>[]) as MovieEntity;
  }
}
