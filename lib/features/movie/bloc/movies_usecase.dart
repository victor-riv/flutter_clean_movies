import 'package:clean_framework/clean_framework.dart';
import 'package:clean_framework/clean_framework_defaults.dart';

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
  void create() {}

  // Logic to fetch movie from API, BUT going through the service adapter
  void loadMovies() {}
}
