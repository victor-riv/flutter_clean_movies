import 'package:clean_framework/clean_framework.dart';
import 'package:clean_framework/clean_framework_defaults.dart';
import 'package:flutter_clean_movies/features/movie/api/movie_service_request_model.dart';
import 'package:flutter_clean_movies/features/movie/api/movie_service_response_model.dart';
import 'package:flutter_clean_movies/locator.dart';

class MovieService
    extends EitherService<MovieServiceRequestModel, MovieServiceResponseModel> {
  MovieService()
      : super(
            method: RestMethod.post,
            restApi: ExampleLocator().api,
            path: 'lackofbetterpath');

  @override
  MovieServiceResponseModel parseResponse(Map<String, dynamic> jsonResponse) {
    return MovieServiceResponseModel.fromJson(jsonResponse);
  }
}
