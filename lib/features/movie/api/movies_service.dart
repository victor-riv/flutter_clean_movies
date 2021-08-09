import 'package:clean_framework/clean_framework_defaults.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_clean_movies/features/movie/api/movies_service_request_model.dart';
import 'package:flutter_clean_movies/features/movie/api/movies_service_response_model.dart';

class MoviesService extends EitherService<MoviesServiceRequestModel,
    MoviesServiceResponseModel> {
  String? apiKey = dotenv.env['TMDB_API_KEY'];
}
