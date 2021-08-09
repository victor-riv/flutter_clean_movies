import 'package:clean_framework/clean_framework.dart';

class MovieEntity extends Entity {
  MovieEntity({
    List<EntityFailure> errors = const [],
  });

  @override
  List<Object> get props => [];

  @override
  merge({errors}) {
    return MovieEntity(errors: errors ?? this.errors);
  }
}

// ignore: slash_for_doc_comments
/**
 * Those the following live here on in ViewModel?
 */

class Movie {
  final String posterPath;
  final bool adult;
  final String overview;
  final String releaseDate;
  final List<int> genreIds;
  final int id;
  final String originalTitle;
  final String originalLanguage;
  final String title;
  final String backdropPath;
  final int popularity;
  final int voteCount;
  final bool video;
  final int voteAverage;

  Movie(
      {required this.posterPath,
      required this.adult,
      required this.overview,
      required this.releaseDate,
      required this.genreIds,
      required this.id,
      required this.originalTitle,
      required this.originalLanguage,
      required this.title,
      required this.backdropPath,
      required this.popularity,
      required this.voteCount,
      required this.video,
      required this.voteAverage});

  Movie.fromJson(Map<String, dynamic> json)
      : posterPath = json['poster_path'] ?? '',
        adult = json['adult'] ?? false,
        overview = json['overview'] ?? '',
        releaseDate = json['release_date'] ?? '',
        genreIds = json['genre_ids'] ?? [],
        id = json['id'] ?? 0,
        originalTitle = json['original_title'] ?? '',
        originalLanguage = json['original_language'] ?? '',
        title = json['title'] ?? '',
        backdropPath = json['backdrop_path'] ?? '',
        popularity = json['popularity'] ?? '',
        voteCount = json['vote_count'] ?? 0,
        video = json['video'] ?? false,
        voteAverage = json['vote_average'] ?? 0;
}
