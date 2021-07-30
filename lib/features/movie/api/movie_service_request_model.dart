import 'package:clean_framework/clean_framework_defaults.dart';
import 'package:equatable/equatable.dart';

class MovieServiceRequestModel extends Equatable implements JsonRequestModel {
  final String? apiKey;

  MovieServiceRequestModel({this.apiKey});

  @override
  List<Object?> get props => [apiKey];

  @override
  Map<String, dynamic> toJson() {
    return {'apiKey': apiKey};
  }
}
