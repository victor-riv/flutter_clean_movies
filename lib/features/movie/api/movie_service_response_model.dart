import 'package:clean_framework/clean_framework_defaults.dart';

class MovieServiceResponseModel extends JsonResponseModel {
  final bool didSucceed;

  MovieServiceResponseModel.fromJson(Map<String, dynamic> json)
      : didSucceed = true;

  @override
  List<Object?> get props => [didSucceed];
}
