import 'package:clean_framework/clean_framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_movies/features/movie/model/movie_view_model.dart';

class MovieScreen extends Screen {
  final MovieViewModel? viewModel;
  final Function? onTapLoad;

  MovieScreen({this.onTapLoad, this.viewModel});

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
              onPressed: onTapLoad as void Function()?,
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
