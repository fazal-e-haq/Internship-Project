import 'package:flutter/material.dart';
import 'package:week_3_project/routes/app_routes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: .center,
            children: [
              Image(image: AssetImage('assets/splash_pic.png')),
              Text(
                'Manage your task,\nquickly.',textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, AppRoutes.signin);

        },
        backgroundColor: Color(0xff6368D9),
        shape: StadiumBorder(),
        child: Icon(Icons.arrow_forward, color: Color(0xffEFEBFB), size: 35),
      ),
    );
  }
}
