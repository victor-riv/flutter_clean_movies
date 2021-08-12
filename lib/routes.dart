import 'package:flutter/material.dart';
import 'package:flutter_clean_movies/features/movie/ui/movies_feature_widget.dart';

abstract class MoviesRouter {
  static const String initialRoute = '/';
  static const String nowPlaying = '/nowShowing';

  static Widget generate(String name) {
    switch (name) {
      case initialRoute:
        return MoviesFeatureWidget();

      default:
        return MoviesFeatureWidget();
    }
  }
}
