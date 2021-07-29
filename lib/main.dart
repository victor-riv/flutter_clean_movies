import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

Future main() async {
  await dotenv.load(fileName: '.env');
  runApp(new MaterialApp(title: "Clean Framework Movies", home: Home()));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Clean Movies"),
      ),
      body: MoviesList(),
    );
  }
}

class MoviesList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MoviesListState();
  }
}

class MoviesListState extends State<MoviesList> {
  // API Key for call. This should NOT live here
  var apikey = dotenv.env['TMDB_API_KEY'];

  List movies = [];

  void fetchNowPlayingMovies() async {
    final response = await http.get(Uri.parse(
        'https://api.themoviedb.org/3/movie/now_playing?api_key=$apikey&language=en-US&page=1'));
    final body = jsonDecode(response.body);

    this.setState(() {
      movies = body['results'];
    });
  }

  @override
  void initState() {
    this.fetchNowPlayingMovies();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SizedBox(
            height: 200,
            child: ListView.builder(
                itemCount: movies.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    height: 220,
                    width: double.maxFinite,
                    child: Card(
                      elevation: 5,
                      child: new Text(movies[index]['original_title']),
                    ),
                  );
                }),
          ),
        )
      ],
    );
  }
}
