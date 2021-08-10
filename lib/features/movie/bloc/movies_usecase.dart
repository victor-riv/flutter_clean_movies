import 'package:clean_framework/clean_framework.dart';
import 'package:clean_framework/clean_framework_defaults.dart';
import 'package:flutter_clean_movies/features/movie/bloc/movies_service_adapter.dart';
import 'package:flutter_clean_movies/features/movie/model/movie_entity.dart';
import 'package:flutter_clean_movies/features/movie/model/movies_list_entity.dart';
import 'package:flutter_clean_movies/features/movie/model/movies_view_model.dart';
import 'package:flutter_clean_movies/locator.dart';

class MoviesUseCase extends UseCase {
  Function(ViewModel) _viewModelCallBack;
  RepositoryScope? _scope;

  // ignore: slash_for_doc_comments
  /**
   * No lie I'm a little lost here in line 13.
   */

  MoviesUseCase(Function(ViewModel) viewModelCallBack)
      : _viewModelCallBack = viewModelCallBack;

  // What happens when this use case first gets created
  void create() async {
    _scope = ExampleLocator().repository.containsScope<MovieEntity>();
    if (_scope == null) {
      final newMoviesEntity = MovieEntity();

      _scope = ExampleLocator()
          .repository
          .create<MovieEntity>(newMoviesEntity, _notifySubscribers);
    } else {
      _scope!.subscription = _notifySubscribers;
    }

    //  Not really sure what is going on here
    final entity = ExampleLocator().repository.get<MovieEntity>(_scope!);
    _viewModelCallBack(buildViewModel(entity));
  }

  // Not sure what is going on here
  void _notifySubscribers(entity) {
    _viewModelCallBack(buildViewModel(entity));
  }

  // Logic to fetch movie from API, BUT going through the service adapter
  void loadMovies() async {
    print('Inside movie use case loadMovies');
    final entity =
        ExampleLocator().repository.get<MoviesEntityModelList>(_scope!);
    await ExampleLocator()
        .repository
        .runServiceAdapter(_scope!, MoviesServiceAdapter());
  }

  MoviesViewModel buildViewModel(entity) {
    return MoviesViewModel();
  }
}
