import 'package:flutter/material.dart';
import 'package:quiz_app_v2/view/loading/loading_screen.dart';

import '../view/login/login_screen.dart';
import '../view/register/register_screen.dart';

class RouteManager {
  static const String loadingPage = '/';
  static const String loginPage = '/loginPage';
  static const String registerPage = 'registerPage';

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      //route for loading page
      case loadingPage:
        return MaterialPageRoute(builder: (context) => const LoadingScreen());
      //route for login page
      case loginPage:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );
      //route for register page
      case registerPage:
        return MaterialPageRoute(
          builder: (context) => const RegisterScreen(),
        );

      default:
        throw Exception("No router found");
    }
  }
}
