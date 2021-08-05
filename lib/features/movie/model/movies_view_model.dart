import 'package:clean_framework/clean_framework.dart';

class MoviesViewModel extends ViewModel {
  final List? movies;
  final serviceStatus;

  MoviesViewModel({this.movies, this.serviceStatus = ServiceStatus.unknown});
  @override
  List<Object?> get props => [movies, serviceStatus];
}

enum ServiceStatus { success, invalid, unknown }
