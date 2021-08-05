import 'package:clean_framework/clean_framework.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_clean_movies/features/movie/bloc/movies_bloc.dart';
import 'package:flutter_clean_movies/features/movie/model/movies_view_model.dart';
import 'package:flutter_clean_movies/features/movie/ui/movies_screen.dart';

class MoviesPresenter
    extends Presenter<MoviesBloc, MoviesViewModel, MoviesScreen> {
  @override
  MoviesScreen buildScreen(
      BuildContext context, MoviesBloc bloc, MoviesViewModel viewModel) {
    return MoviesScreen(
        viewModel: viewModel, onLoadMoviesTap: () => _onLoadMoviesTap(bloc));
  }

  @override
  Stream<MoviesViewModel> getViewModelStream(MoviesBloc bloc) {
    print('Received a new view model!');
    return bloc.moviesViewModelPipe.receive;
  }

  void _onLoadMoviesTap(MoviesBloc bloc) {
    // Send event through load movies pipe
    bloc.loadMoviesPipe.send();
  }
}