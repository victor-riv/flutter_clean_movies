import 'package:clean_framework/clean_framework_defaults.dart';

class MoviesServiceResponseModel extends JsonResponseModel {
  final List movies;
  final bool didSucceed;

  MoviesServiceResponseModel({required this.movies, required this.didSucceed});

  @override
  Map<String, dynamic> toJson() {
    return {'movies': movies, 'didSucceed': didSucceed};
  }

  List<Object?> get props => throw UnimplementedError();
}
