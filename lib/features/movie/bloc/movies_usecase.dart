import 'package:clean_framework/clean_framework.dart';
import 'package:clean_framework/clean_framework_defaults.dart';
import 'package:flutter_clean_movies/features/movie/model/movies_entity.dart';
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
    print('wtf');
    if (_scope == null) {
      final newMoviesEntity = MovieEntity();
      print('after creating entity');
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
  void loadMovies() {}

  MoviesViewModel buildViewModel(entity) {
    print('am i here?');
    return MoviesViewModel(movies: []);
  }
}
