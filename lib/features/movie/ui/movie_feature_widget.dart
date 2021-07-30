import 'package:clean_framework/clean_framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_movies/features/movie/bloc/movie_bloc.dart';
import 'package:flutter_clean_movies/features/movie/ui/movie_presenter.dart';

class MovieFeatureWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MovieBloc(),
      child: MoviePresenter(),
    );
  }
}
