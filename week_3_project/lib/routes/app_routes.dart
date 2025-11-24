import 'package:flutter/material.dart';
import 'package:week_3_project/presentation/screens/home_screen.dart';
import 'package:week_3_project/presentation/screens/sign_in_screen.dart';
import 'package:week_3_project/presentation/screens/sign_up_screen.dart';
import 'package:week_3_project/presentation/screens/splash_screen.dart';

class AppRoutes {
  static const String splash = '/splash';
  static const String home = '/home';
  static const String signin = '/signin';
  static const String signup = '/signup';

  // ---------- FAST PUSH ----------
  static void push(BuildContext context, String route) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => _getPage(route)));
  }

  // ---------- FAST REPLACE ----------
  static void replace(BuildContext context, String route) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => _getPage(route)),
    );
  }

  // ---------- POP ----------
  static void pop(BuildContext context) {
    Navigator.pop(context);
  }

  // ---------- SWITCH (ULTRA-FAST PAGE SELECTOR) ----------
  static Widget _getPage(String route) {
    switch (route) {
      case splash:
        return const SplashScreen();

      case home:
        return const HomeScreen();

      case signin:
        return SignInScreen();

      case signup:
        return SignUpScreen();

      default:
        return const Scaffold(
          body: Center(child: Text("404 - Page Not Found")),
        );
    }
  }
  static Route<dynamic> generateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (_) => _getPage(settings.name ?? ""),
    );
  }

}
