import 'package:clean_framework/clean_framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_movies/features/movie/bloc/movies_bloc.dart';
import 'package:flutter_clean_movies/features/movie/ui/movies_presenter.dart';

class MoviesFeatureWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (_) => MoviesBloc(), child: MoviesPresenter());
  }
}
