import 'package:clean_framework/clean_framework.dart';
import 'package:clean_framework/clean_framework_defaults.dart';
import 'package:flutter_clean_movies/features/movie/model/movie_details_entity.dart';
import 'package:flutter_clean_movies/features/movie/model/movie_details_view_model.dart';

import '../../../locator.dart';

class MovieDetailsUseCase extends UseCase {
  Function(ViewModel) _viewModelCallBack;
  RepositoryScope? _scope;

  // ignore: slash_for_doc_comments
  /**
   * No lie I'm a little lost here in line 13.
   */

  MovieDetailsUseCase(Function(ViewModel) viewModelCallBack)
      : _viewModelCallBack = viewModelCallBack;

  // What happens when this use case first gets created
  void create() async {
    _scope = ExampleLocator().repository.containsScope<MovieDetailsEntity>();
    if (_scope == null) {
      _scope = ExampleLocator()
          .repository
          .create<MovieDetailsEntity>(MovieDetailsEntity(), _notifySubscribers);
    } else {
      _scope!.subscription = _notifySubscribers;
    }

    //  Not really sure what is going on here
    final entity = ExampleLocator().repository.get<MovieDetailsEntity>(_scope!);
    _viewModelCallBack(buildViewModel(entity));
  }

  // Not sure what is going on here
  void _notifySubscribers(entity) {
    _viewModelCallBack(buildViewModel(entity));
  }

  MovieDetailsViewModel buildViewModel(entity) {
    if (entity.moviesEntityModelList.isEmpty) {
      return MovieDetailsViewModel();
    } else {
      return MovieDetailsViewModel();
    }
  }
}
