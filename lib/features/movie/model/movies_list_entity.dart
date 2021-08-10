import 'package:clean_framework/clean_framework.dart';
import 'package:flutter_clean_movies/features/movie/model/movie_entity.dart';

class MoviesEntityModelList extends Entity {
  final List<MovieEntity> moviesEntityModelList;

  MoviesEntityModelList(
      {List<EntityFailure> errors = const [],
      required List<MovieEntity> moviesEntityModelList})
      : moviesEntityModelList = moviesEntityModelList,
        super(errors: errors);

  @override
  List<Object> get props => [errors, moviesEntityModelList];

  @override
  Entity merge(
      {List<EntityFailure>? errors, List<MovieEntity>? moviesEntityModelList}) {
    return MoviesEntityModelList(
      errors: errors ?? this.errors,
      moviesEntityModelList:
          moviesEntityModelList ?? this.moviesEntityModelList,
    );
  }

  @override
  String toString() {
    return 'MovieEntityModelList{movieEntityModelList: $moviesEntityModelList}';
  }
}
