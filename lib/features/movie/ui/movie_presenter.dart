import 'package:clean_framework/clean_framework.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_clean_movies/features/movie/bloc/movie_bloc.dart';
import 'package:flutter_clean_movies/features/movie/model/movie_view_model.dart';
import 'package:flutter_clean_movies/features/movie/ui/movie_screen.dart';

class MoviePresenter extends Presenter<MovieBloc, MovieViewModel, MovieScreen> {
  @override
  MovieScreen buildScreen(
      BuildContext context, MovieBloc bloc, MovieViewModel viewModel) {
    // TODO: implement buildScreen
    throw UnimplementedError();
  }

  @override
  Stream<MovieViewModel> getViewModelStream(MovieBloc bloc) {
    // TODO: implement getViewModelStream
    throw UnimplementedError();
  }
}
