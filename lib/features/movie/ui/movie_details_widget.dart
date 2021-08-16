import 'package:clean_framework/clean_framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_movies/features/movie/bloc/movie_details_bloc.dart';
import 'package:flutter_clean_movies/features/movie/ui/movie_details_presenter.dart';

class MovieDetailsFeatureWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => MovieDetailsBloc(), child: MovieDetailsPresenter());
  }
}
