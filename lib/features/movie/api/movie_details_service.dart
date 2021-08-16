import 'package:clean_framework/clean_framework.dart';
import 'package:clean_framework/clean_framework_defaults.dart';
import 'package:flutter_clean_movies/features/movie/api/movie_details_service_request_model.dart';
import 'package:flutter_clean_movies/features/movie/api/movies_service_response_model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../../locator.dart';

class MovieDetailsService extends EitherService<MovieDetailsServiceRequestModel,
    MoviesServiceResponseModel> {
  String? apiKey = dotenv.env['TMDB_API_KEY'];

/**
 * TODO: Remove api key from the path
 */
  MovieDetailsService()
      : super(
            method: RestMethod.get,
            restApi: ExampleLocator().api,
            path:
                'api.themoviedb.org/3/movie/now_playing?api_key=a5326823e52c473ffda44ace64b7d44d&language=en-US&page=1');

  @override
  parseResponse(Map<String, dynamic> jsonResponse) {
    // TODO: implement parseResponse
    throw UnimplementedError();
  }
}
