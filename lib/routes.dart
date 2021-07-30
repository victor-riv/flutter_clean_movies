import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_clean_movies/features/movie/ui/movie_feature_widget.dart';

abstract class MovieRouter {
  static const String initialRoute = '/';

  static Widget generate(String name) {
    switch (name) {
      case initialRoute:
        // return MovieFeatureWidget();
        return PageNotFound();

      default:
        return PageNotFound();
    }
  }
}

class PageNotFound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Movies"),
      ),
      body: Center(
        child: new Text("Welcome to Clean Movies. Nothing to show yet."),
      ),
    );
  }
}
