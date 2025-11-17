import 'package:flutter/material.dart';
import 'package:internship_project/Screens/login_screen.dart';
import 'Theme/light_theme.dart';

void main() {
  runApp(const InternshipProject());
}

class InternshipProject extends StatelessWidget {
  const InternshipProject({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightMode,
      themeMode: ThemeMode.system,
      home: LoginScreen(),
    );
  }
}
