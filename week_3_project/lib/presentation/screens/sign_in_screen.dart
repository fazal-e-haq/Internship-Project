import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:week_3_project/presentation/widgets/login_button.dart';
import 'package:week_3_project/presentation/widgets/login_textfield.dart';
import 'package:week_3_project/routes/app_routes.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void signIn(BuildContext context) async {
    final email = emailController.text.trim();
    final password = passwordController.text.trim();

    if (email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter email and password')),
      );
      return;
    }

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );

      // Navigate to home on successful login
      Navigator.pushReplacementNamed(context,'/bottomBar');
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Error: ${e.toString()}')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            reverse: true,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36),
              child: Column(
                children: [
                  const Image(image: AssetImage('assets/login_pic.png')),
                  const SizedBox(height: 20),
                  LoginTextfield(
                    controller: emailController,
                    hintText: 'Email',
                  ),
                  const SizedBox(height: 8),
                  LoginTextfield(
                    controller: passwordController,
                    hintText: 'Password',
                  ),
                  const SizedBox(height: 40),
                  LoginButton(text: 'Sign In', onTap: () => signIn(context)),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account? ',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.black26,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                            context,
                            '/signup',
                          );
                        },
                        child: Text(
                          'Sign Up.',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: const Color(0xff6368D9),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
