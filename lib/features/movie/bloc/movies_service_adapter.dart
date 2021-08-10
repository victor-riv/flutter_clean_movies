import 'package:clean_framework/clean_framework.dart';
import 'package:flutter_clean_movies/features/movie/api/movies_service.dart';
import 'package:flutter_clean_movies/features/movie/api/movies_service_request_model.dart';
import 'package:flutter_clean_movies/features/movie/api/movies_service_response_model.dart';
import 'package:flutter_clean_movies/features/movie/model/movies_list_entity.dart';

class MoviesServiceAdapter extends ServiceAdapter<MoviesEntityModelList,
    MoviesServiceRequestModel, MoviesServiceResponseModel, MoviesService> {
  MoviesServiceAdapter() : super(MoviesService());

  @override
  MoviesEntityModelList createEntity(MoviesEntityModelList initialEntity,
      MoviesServiceResponseModel responseModel) {
    print('Hello there partner');
    print(responseModel);
    throw UnimplementedError();
  }
}
