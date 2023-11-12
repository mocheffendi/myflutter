import 'package:flutter/material.dart';
import 'package:flutter_route_name/pages/counter_page.dart';
import 'package:flutter_route_name/pages/fingerprint_backdoor.dart';
import 'package:flutter_route_name/pages/ledvideotron_calculator.dart';
import 'package:flutter_route_name/pages/login_page.dart';
import 'package:flutter_route_name/pages/main_page.dart';

class RoutesManager {
  static const String homePage = "/";
  static const String counterPage = "/counterPage";
  static const String loginPage = "/loginPage";
  static const String fingerprintBackdoor = "/fingerprintBackdoor";
  static const String ledvideotronCalculator = '/ledvideotronCalculator';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(
          builder: (context) => const MainPage(
            title: 'Main Page',
          ),
        );
      case counterPage:
        return MaterialPageRoute(
          builder: (context) => const CounterPage(
            title: 'Counter Page',
          ),
        );

      case loginPage:
        return MaterialPageRoute(
          builder: (context) => const LoginPage(
            title: 'Login',
          ),
        );

      case fingerprintBackdoor:
        return MaterialPageRoute(
          builder: (context) => const FingerprintBackdoor(
            title: 'Fingerprint Backdoor',
          ),
        );

      case ledvideotronCalculator:
        return MaterialPageRoute(
          builder: (context) => const LedVideotronCalculator(
            title: 'LED Videotron Calculator',
          ),
        );
      default:
        throw const FormatException('Route not found! Check routes again');
    }
  }
}
