import 'package:clean_framework/clean_framework.dart';
import 'package:flutter/material.dart';

import 'package:flutter_clean_movies/features/movie/bloc/movies_bloc.dart';
import 'package:flutter_clean_movies/features/movie/model/movies_view_model.dart';
import 'package:flutter_clean_movies/features/movie/ui/movies_screen.dart';
import 'package:flutter_clean_movies/routes.dart';

class MoviesPresenter
    extends Presenter<MoviesBloc, MoviesViewModel, MoviesScreen> {
  @override
  MoviesScreen buildScreen(
      BuildContext context, MoviesBloc bloc, MoviesViewModel viewModel) {
    print('Presenter was called!');
    return MoviesScreen(
        viewModel: viewModel,
        navigateToNowPlayingMovies: () => _navigateToNowPlayingMovies(context));
  }

  @override
  Stream<MoviesViewModel> getViewModelStream(MoviesBloc bloc) {
    print('Received a new view model!');
    return bloc.moviesViewModelPipe.receive;
  }

  void _navigateToNowPlayingMovies(BuildContext context) {
    print('_onLoadMoviesTap callback was executed');
    CFRouterScope.of(context).push(MoviesRouter.nowPlaying);
    // Look into converting the loadMoviesPipe to a Pipe<MoviesEvent> like in deposit_check_event bc it doesnt let me use send here.

    // Send event through load movies pipe
    // bloc.loadMoviesPipe.;
  }
}
