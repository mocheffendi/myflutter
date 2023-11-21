import 'package:flutter/material.dart';
import 'package:flutter_route_name/pages/calendar_page.dart';
import 'package:flutter_route_name/pages/cobagrid.dart';
import 'package:flutter_route_name/pages/counter_page.dart';
import 'package:flutter_route_name/pages/dropdownsearch.dart';
import 'package:flutter_route_name/pages/fingerprint_backdoor.dart';
import 'package:flutter_route_name/pages/http.dart';
import 'package:flutter_route_name/pages/ledvideotron_calculator.dart';
import 'package:flutter_route_name/pages/ledvideotronmodul_calculator.dart';
import 'package:flutter_route_name/pages/login_page.dart';
import 'package:flutter_route_name/pages/main_page.dart';
import 'package:flutter_route_name/pages/todo_page.dart';

class RoutesManager {
  static const String homePage = "/";
  static const String counterPage = "/counterPage";
  static const String loginPage = "/loginPage";
  static const String fingerprintBackdoor = "/fingerprintBackdoor";
  static const String ledvideotronCalculator = '/ledvideotronCalculator';
  static const String cobaGrid = '/cobaGrid';
  static const String todoPage = '/todoPage';
  static const String ledvideotronmodulCalculator =
      '/ledvideotronmodulCalculator';
  static const String calendarPage = '/calendarPage';
  static const String dropdownPage = '/dropdownPage';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(
          builder: (context) => const
              // LedVideotronCalculator(
              MainPage(
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
            title: 'LED Videotron Cabinet Calculator',
          ),
        );
      case ledvideotronmodulCalculator:
        return MaterialPageRoute(
          builder: (context) => const LedVideotronModulCalculator(
            title: 'LED Videotron Modul Calculator',
          ),
        );
      case cobaGrid:
        return MaterialPageRoute(
          builder: (context) => const MyGridView(
            title: 'LED Videotron Cabinet Calculator',
          ),
        );
      case todoPage:
        return MaterialPageRoute(
          builder: (context) => const MyTodoPage(
            title: 'HTTP & API',
          ),
        );
      case calendarPage:
        return MaterialPageRoute(
          builder: (context) => MyCalendar(
            title: 'Calendar',
          ),
        );
      case dropdownPage:
        return MaterialPageRoute(
          builder: (context) => const MyDropDownMenu(
            title: 'Drop Down Menu',
          ),
        );
      default:
        throw const FormatException('Route not found! Check routes again');
    }
  }
}
