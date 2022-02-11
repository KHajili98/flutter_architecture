import 'package:flutter/material.dart';

class AppRouter {
  AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {

      // case Routes.login:
      //   return MaterialPageRoute(
      //     builder: (context) => const LoginPage(),
      //   );

      default:
        throw UnimplementedError('No defined route: ${settings.name}');
    }
  }
}
