import 'package:clean_framework/clean_framework.dart';
import 'package:flutter_clean_movies/features/movie/api/movies_service.dart';
import 'package:flutter_clean_movies/features/movie/bloc/movies_usecase.dart';
import 'package:flutter_clean_movies/features/movie/model/movies_list_entity.dart';
import 'package:flutter_clean_movies/features/movie/model/movies_view_model.dart';

class MoviesBloc extends Bloc {
  late MoviesUseCase _moviesUseCase;

  final moviesViewModelPipe = Pipe<MoviesViewModel>();
  final loadMoviesPipe = EventPipe();

  MoviesBloc({MoviesService? movieService}) {
    // Create UseCase
    _moviesUseCase = MoviesUseCase(
        (viewModel) => moviesViewModelPipe.send(viewModel as MoviesViewModel));
    moviesViewModelPipe.whenListenedDo(() {
      _moviesUseCase.create();
    });

    // Implement the UseCase sending the viewModel to the viewmodel Pipe
    // moviesViewModelPipe.send(viewModel as MoviesViewModel)

    // Handle loadMovies event with its corresponding handler
    loadMoviesPipe.listen(loadMoviesHandler);
  }

  void loadMoviesHandler() {
    _moviesUseCase.loadMovies();
  }

  @override
  void dispose() {
    loadMoviesPipe.dispose();
    moviesViewModelPipe.dispose();
  }
}
