import 'package:flutter/material.dart';
import 'package:yaho_test/modules/ui/home/home_page.dart';
import 'package:yaho_test/modules/ui/splash/splash_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(settings: const RouteSettings(name: Routes.home), builder: (_) => const HomePage());
      case Routes.splash:
        return MaterialPageRoute(settings: const RouteSettings(name: Routes.splash), builder: (_) => const SplashPage());
      default:
        return MaterialPageRoute(builder: (_) => const SplashPage());
    }
  }
}

class Routes {
  static const home = '/home';
  static const splash = '/';
}
