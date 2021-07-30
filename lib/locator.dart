import 'package:flutter_clean_movies/dependency/url_launcher.dart';
import 'package:clean_framework/clean_framework.dart';
import 'package:clean_framework/clean_framework_defaults.dart';

import 'package:flutter_clean_movies/core/patch_simple_rest_api.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

ExampleLocator locator() => ExampleLocator();

Logger logger() => ExampleLocator().logger;

Future<void> openUrl(url) => ExampleLocator().urlLauncher!.launchUrl(url);

class ExampleLocator implements Locator {
  ExampleLocator._();

  factory ExampleLocator() {
    Locator.init(ExampleLocator._());
    return Locator.getInstance();
  }

  @override
  Connectivity connectivity = AlwaysOnlineConnectivity();

  @override
  Logger logger = ConsoleLogger(LogLevel.verbose);

  UrlLauncher? urlLauncher = UrlLauncher();

  PatchSimpleRestApi api = PatchSimpleRestApi(
      baseUrl:
          'https://api.themoviedb.org/3/movie/now_playing?api_key=${DotEnv().env['TMDB_API_KEY']}&language=en-US&page=1'); // Points to Mockoon instance
  // baseUrl: 'http://192.168.0.11:3001/'); //Points to Mockoon instance

  Repository repository = Repository();

  void dispose() => Locator.dispose();
}
