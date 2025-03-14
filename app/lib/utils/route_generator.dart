import 'package:flutter/material.dart';

import '../core/pages/application.dart';

const String FIRST_SCREEN = '/';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case FIRST_SCREEN:
        return MaterialPageRoute(
          builder: (context) => Application(),
        );

      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _error();
    }
  }

  static Route<dynamic> _error() {
    return MaterialPageRoute(builder: (_) {
      return const Scaffold(
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
