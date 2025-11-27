import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:week_3_project/presentation/widgets/login_textfield.dart';
import 'package:week_3_project/routes/app_routes.dart';
import '../widgets/login_button.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

    TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  void auth(BuildContext context) async {
    final email = emailController.text.trim();
    final password = passwordController.text.trim();
    final confirmPassword = confirmPasswordController.text.trim();

    if (email.isEmpty || password.isEmpty || confirmPassword.isEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Please fill all fields')));
      return;
    }

    if (!email.endsWith('@gmail.com')) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter a valid Gmail address')),
      );
      return;
    }

    if (password != confirmPassword) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Passwords do not match')));
      return;
    }

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      Navigator.pushReplacementNamed(context, '/signin');
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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36),
              child: Column(
                children: [
                  const Image(image: AssetImage('assets/signup_pic.png')),
                  LoginTextfield(
                    controller: usernameController,
                    hintText: 'User name',
                  ),
                  const SizedBox(height: 8),
                  LoginTextfield(
                    controller: emailController,
                    hintText: 'Email',
                  ),
                  const SizedBox(height: 8),
                  LoginTextfield(
                    controller: passwordController,
                    hintText: 'Password',
                  ),
                  const SizedBox(height: 8),
                  LoginTextfield(
                    controller: confirmPasswordController,
                    hintText: 'Confirm Password',
                  ),
                  const SizedBox(height: 40),
                  LoginButton(text: 'Sign Up', onTap: () => auth(context)),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account? ',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.black26,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                            context,
                            '/signin',
                          );
                        },
                        child: Text(
                          'Sign In.',
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
