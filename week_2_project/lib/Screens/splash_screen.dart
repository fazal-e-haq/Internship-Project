import 'package:flutter/material.dart';
import 'package:week_2_project/Screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //
  // @override
  // void initState() {
  //   super.initState();
  //   show();
  // }
  //
  // void show() async {
  //   await Future.delayed(Duration(seconds: 2));
  //   Navigator.pushReplacement(
  //     context,
  //     MaterialPageRoute(builder: (context) => HomeScreen()),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text(
                'Do',
                style: TextStyle(
                  shadows: [Shadow(color: Colors.white70, blurRadius: 100)],
                  fontSize: 40,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),

              Text(
                'Some',
                style: TextStyle(
                  shadows: [Shadow(color: Colors.white70, blurRadius: 100)],
                  fontSize: 50,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              Text(
                'Task',
                style: TextStyle(
                  fontSize: 100,
                  shadows: [Shadow(color: Colors.white70, blurRadius: 100)],
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
