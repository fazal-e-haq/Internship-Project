import 'package:flutter/material.dart';
import 'package:week_3_project/presentation/screens/splash_screen.dart';
import 'package:week_3_project/presentation/styles/light_theme.dart';
import 'package:week_3_project/routes/app_routes.dart';

class TaskManagementApp extends StatelessWidget {
  const TaskManagementApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
theme: LightTheme.theme,
      themeMode: ThemeMode.light,

      initialRoute: '/Splash',
        routes: appRoutes,

      home: SplashScreen(),


    );
  }
}
