import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(title: "Clean Framework Movies", home: Home()));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Clean Movies"),
      ),
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
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [],
    );
  }
}
