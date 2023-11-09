import 'package:flutter/material.dart';
import 'package:flutter_route_name/pages/counter_page.dart';
import 'package:flutter_route_name/pages/login_page.dart';
import 'package:flutter_route_name/pages/main_page.dart';

class RoutesManager {
  static const String homePage = "/";
  static const String counterPage = "/counterPage";
  static const String loginPage = "/loginPage";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(
            builder: (context) => const MainPage(
                  title: 'Main Page',
                ));
      case counterPage:
        return MaterialPageRoute(
            builder: (context) => const CounterPage(
                  title: 'Counter Page',
                ));

      case loginPage:
        return MaterialPageRoute(
            builder: (context) => const LoginPage(
                  title: 'Login',
                ));
      default:
        throw const FormatException('Route not found! Check routes again');
    }
  }
}
