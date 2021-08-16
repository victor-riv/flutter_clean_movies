import 'package:clean_framework/clean_framework.dart';
import 'package:flutter_clean_movies/features/movie/api/movie_details_service.dart';
import 'package:flutter_clean_movies/features/movie/bloc/movie_details_use_case.dart';
import 'package:flutter_clean_movies/features/movie/model/movie_details_view_model.dart';

class MovieDetailsBloc extends Bloc {
  late MovieDetailsUseCase _movieDetailsUseCase;

  final movieDetailsViewModelPipe = Pipe<MovieDetailsViewModel>();

  MoviesDetailsBloc({MovieDetailsService? movieDetailsService}) {
    // Create UseCase
    _movieDetailsUseCase = MovieDetailsUseCase((viewModel) =>
        movieDetailsViewModelPipe.send(viewModel as MovieDetailsViewModel));
    movieDetailsViewModelPipe.whenListenedDo(() {
      _movieDetailsUseCase.create();
    });

    // Implement the UseCase sending the viewModel to the viewmodel Pipe
    // moviesViewModelPipe.send(viewModel as MoviesViewModel)
  }

  @override
  void dispose() {
    movieDetailsViewModelPipe.dispose();
  }
}
