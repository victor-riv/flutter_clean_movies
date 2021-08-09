import 'package:clean_framework/clean_framework.dart';
import 'package:clean_framework/clean_framework_defaults.dart';

import 'dependency/url_launcher.dart';

ExampleLocator locator() => ExampleLocator();

Logger logger() => ExampleLocator().logger;

Future<void> openUrl(url) => ExampleLocator().urlLauncher!.launchURL(url);

class ExampleLocator implements Locator {
  factory ExampleLocator() {
    Locator.init(ExampleLocator());
    return Locator.getInstance();
  }

  UrlLauncher? urlLauncher = UrlLauncher();

  SimpleRestApi api = SimpleRestApi(baseUrl: '');

  Repository repository = Repository();

  @override
  Connectivity connectivity = AlwaysOnlineConnectivity();

  @override
  Logger logger = ConsoleLogger(LogLevel.verbose);
}
