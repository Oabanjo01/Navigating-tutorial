import 'package:flutter/material.dart';
import 'package:tutorial_pdf/main.dart';
import 'package:tutorial_pdf/screens/home.dart';
import 'package:tutorial_pdf/screens/secondsceen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Home(
        ));
      case '/secondscreen':
        if (args is String) {
          return MaterialPageRoute(builder: (_) => SecondScreen(
            data: args,
          ));
        } 
        return _errorRoute();
      default: 
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return const Scaffold(
        body: Center(
          child: Text(
            'Error!',
            style: TextStyle(color: Colors.red, fontSize: 30),
          ),
        ),
      );
    });
  }
}
