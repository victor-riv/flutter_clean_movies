import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_clean_movies/features/movie/ui/movie_feature_widget.dart';

abstract class MovieRouter {
  static const String initialRoute = '/';
  static const String nowShowingRoute = '/nowShowing';

  static Widget generate(String name) {
    switch (name) {
      case initialRoute:
        return MovieFeatureWidget();

      default:
        return MovieFeatureWidget();
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
        body: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            new Padding(
              padding: const EdgeInsets.all(24.0),
              child: new Text(
                  "Welcome to Clean Movies. Click button below to see what's showin in theaters"),
            ),
            new TextButton(
              onPressed: null,
              child: new Text(
                "Load",
                style: TextStyle(color: Colors.white),
              ),
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
            )
          ],
        ));
  }
}
