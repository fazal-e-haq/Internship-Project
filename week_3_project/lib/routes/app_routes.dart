import 'package:flutter/material.dart';
import 'package:week_3_project/presentation/screens/splash_screen.dart';
import 'package:week_3_project/presentation/screens/home_screen.dart';
import 'package:week_3_project/presentation/screens/sign_in_screen.dart';
import 'package:week_3_project/presentation/screens/sign_up_screen.dart';
import 'package:week_3_project/presentation/widgets/bottom_bar.dart';

Map<String, WidgetBuilder> appRoutes = {
  '/splash': (context) => const SplashScreen(),
  '/home': (context) => const HomeScreen(),
  '/signin': (context) => SignInScreen(),
  '/signup': (context) => SignUpScreen(),
  '/bottomBar': (context) => const BottomBar(),
};
