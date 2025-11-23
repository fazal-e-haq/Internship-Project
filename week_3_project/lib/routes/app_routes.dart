import 'package:flutter/material.dart';
import 'package:week_3_project/presentation/screens/home_screen.dart';
import 'package:week_3_project/presentation/screens/sign_in_screen.dart';
import 'package:week_3_project/presentation/screens/splash_screen.dart';

class AppRoutes {
  static const String splash = '/Splash';
  static const String home = '/home';
  static const String signin = '/signin';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      case home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      case signin:
        return MaterialPageRoute(builder: (_) => const SignInScreen());

      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text("Route not found"))),
        );
    }
  }
}
