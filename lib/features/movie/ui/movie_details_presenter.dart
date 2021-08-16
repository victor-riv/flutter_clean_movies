import 'package:clean_framework/clean_framework.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_clean_movies/features/movie/bloc/movie_details_bloc.dart';
import 'package:flutter_clean_movies/features/movie/model/movie_details_view_model.dart';
import 'package:flutter_clean_movies/features/movie/ui/movie_details_screen.dart';

class MovieDetailsPresenter extends Presenter<MovieDetailsBloc,
    MovieDetailsViewModel, MovieDetailsScreen> {
  @override
  MovieDetailsScreen buildScreen(BuildContext context, MovieDetailsBloc bloc,
      MovieDetailsViewModel viewModel) {
    // TODO: implement buildScreen
    throw UnimplementedError();
  }

  @override
  Stream<MovieDetailsViewModel> getViewModelStream(MovieDetailsBloc bloc) {
    // TODO: implement getViewModelStream
    throw UnimplementedError();
  }
}
