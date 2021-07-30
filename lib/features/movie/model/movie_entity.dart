import 'package:clean_framework/clean_framework.dart';

class MovieEntity extends Entity {
  final String apiKey;

  MovieEntity({List<EntityFailure> errors = const [], String? apiKey})
      : apiKey = apiKey ?? '',
        super(errors: errors);

  @override
  List<Object> get props => [apiKey, errors];

  @override
  merge({errors, String? apiKey}) {
    return MovieEntity(
        errors: errors ?? this.errors, apiKey: apiKey ?? this.apiKey);
  }
}
