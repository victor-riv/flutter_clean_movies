import 'package:clean_framework/clean_framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_movies/features/movie/model/movie_entity.dart';
import 'package:flutter_clean_movies/features/movie/model/movies_view_model.dart';

class MoviesScreen extends Screen {
  final MoviesViewModel viewModel;
  final Function? navigateToNowPlayingMovies;

  MoviesScreen({this.navigateToNowPlayingMovies, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Text("Clean Architecture Movies"),
        ),
        body: viewModel.movies.isEmpty
            ? HomeView(navigateToNowPlayingMovies)
            : MoviesList(viewModel.movies));
  }
}

Widget HomeView(Function? navigateToNowPlayingMovies) {
  return Container(
    width: double.infinity,
    height: double.infinity,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("See what's playing in a theater near you"),
        TextButton(
          child: Text("Fetch Movies"),
          onPressed: navigateToNowPlayingMovies as void Function()?,
        ),
      ],
    ),
  );
}

Widget MoviesList(List<MovieEntity> movies) {
  return new ListView.builder(
    itemBuilder: (context, index) => getMovieCard(movies[index]),
    itemCount: movies.length,
    padding: new EdgeInsets.symmetric(vertical: 16.0),
  );
}

Widget getMovieCard(MovieEntity movie) {
  final thumbnail = Container(
      margin: new EdgeInsets.symmetric(vertical: 16.0),
      alignment: FractionalOffset.centerLeft,
      child: new Image(
          image: new NetworkImage(
              "https://image.tmdb.org/t/p/original/${movie.posterPath}"),
          height: 92.0,
          width: 92.0));

  final cardContent = new Container(
    margin: new EdgeInsets.fromLTRB(76.0, 16.0, 16.0, 16.0),
    constraints: new BoxConstraints.expand(),
    child: new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Container(height: 4.0),
        new Text(
          movie.originalTitle,
          style: TextStyle(
              color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w600),
        ),
        new Container(height: 10.0),
        // new Text("Placeholder"),
        new Container(
            margin: new EdgeInsets.symmetric(vertical: 8.0),
            height: 2.0,
            width: 18.0,
            color: new Color(0xff00c6ff)),
        new Row(
          children: <Widget>[
            new Container(width: 8.0),
            new Text(
              movie.popularity.toString(),
              style: TextStyle(
                  color: Color(0xffb6b2df),
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400),
            ),
            new Container(width: 24.0),
            new Container(width: 8.0),
            new Text(
              movie.voteAverage.toString(),
              style: TextStyle(
                  color: Color(0xffb6b2df),
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ],
    ),
  );

  final card = Container(
    height: 124.0,
    margin: new EdgeInsets.only(left: 46.0),
    decoration: BoxDecoration(
        color: new Color(0xFF333366),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
              blurRadius: 10.0,
              color: Colors.black12,
              offset: Offset(0.0, 10.0))
        ]),
    child: cardContent,
  );

  return Container(
    margin: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
    child: Stack(
      children: [card, thumbnail],
    ),
  );
}
