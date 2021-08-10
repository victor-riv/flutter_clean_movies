import 'package:clean_framework/clean_framework.dart';

// ignore: slash_for_doc_comments
/**
 * Those the following live here on in ViewModel?
 */

class MovieEntity extends Entity {
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

  MovieEntity(
      {errors,
      String? posterPath,
      bool? adult,
      String? overview,
      String? releaseDate,
      List<int>? genreIds,
      int? id,
      String? originalTitle,
      String? originalLanguage,
      String? title,
      String? backdropPath,
      int? popularity,
      int? voteCount,
      bool? video,
      int? voteAverage})
      : posterPath = posterPath ?? '',
        adult = adult ?? false,
        overview = overview ?? '',
        releaseDate = releaseDate ?? '',
        genreIds = genreIds ?? [],
        id = 0,
        originalTitle = originalTitle ?? '',
        originalLanguage = originalLanguage ?? '',
        title = title ?? '',
        backdropPath = backdropPath ?? '',
        popularity = popularity ?? 0,
        voteCount = voteCount ?? 0,
        video = video ?? false,
        voteAverage = voteAverage ?? 0,
        super(errors: errors ?? []);

  @override
  List<Object> get props => [
        posterPath,
        adult,
        overview,
        releaseDate,
        genreIds,
        id,
        originalTitle,
        originalLanguage,
        title,
        backdropPath,
        popularity,
        voteCount,
        video,
        voteAverage
      ];

  @override
  merge(
      {errors,
      String? posterPath,
      bool? adult,
      String? overview,
      String? releaseDate,
      List<int>? genreIds,
      int? id,
      String? originalTitle,
      String? originalLanguage,
      String? title,
      String? backdropPath,
      int? popularity,
      int? voteCount,
      bool? video,
      int? voteAverage}) {
    return MovieEntity(
        posterPath: posterPath ?? this.posterPath,
        adult: adult ?? this.adult,
        overview: overview ?? this.overview,
        releaseDate: releaseDate ?? this.releaseDate,
        genreIds: genreIds ?? this.genreIds,
        id: id ?? this.id,
        originalTitle: originalTitle ?? this.originalTitle,
        originalLanguage: originalLanguage ?? this.originalLanguage,
        title: title ?? this.title,
        backdropPath: backdropPath ?? this.backdropPath,
        popularity: popularity ?? this.popularity,
        voteCount: voteCount ?? this.voteCount,
        video: video ?? this.video,
        voteAverage: voteAverage ?? this.voteAverage);
  }

  MovieEntity.fromJson(Map<String, dynamic> json)
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
