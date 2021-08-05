import 'package:clean_framework/clean_framework.dart';
import 'package:flutter_clean_movies/features/movie/model/movies_view_model.dart';

class MoviesBloc extends Bloc {
  // late MoviesUseCase _moviesUseCase;

  final moviesViewModelPipe = Pipe<MoviesViewModel>();
  final loadMoviesPipe = EventPipe();

  MoviesBloc() {
    // Create UseCase

    // Handle loadMovies event with its corresponding handler
    loadMoviesPipe.listen(loadMoviesHandler);
  }

  void loadMoviesHandler() {
    // _moviesUseCase.loadMovies();
  }

  @override
  void dispose() {
    loadMoviesPipe.dispose();
  }
}
