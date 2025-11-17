import 'package:flutter/material.dart';
import 'package:internship_project/MyWidgets/my_button.dart';
import 'package:internship_project/MyWidgets/my_textfield.dart';
import 'package:internship_project/Screens/forget_password.dart';
import 'package:internship_project/Screens/home_page.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,

      body: SafeArea(
        child: SingleChildScrollView(
          reverse: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height / 25),
                Icon(
                  Icons.map_outlined,
                  color: Theme.of(context).colorScheme.primary,
                  size: 100,
                ),
                Text(
                  'Welcome',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 40,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 20),
                MyTextfield(hintText: 'Email', controller: emailController),
                SizedBox(height: 20),
                MyTextfield(
                  hintText: 'Password',
                  controller: passwordController,
                ),
                SizedBox(height: 5),
                Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ForgetPassword(),
                        ),
                      );
                    },
                    child: Text(
                      'Forget Password',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 7),
                MyButton(
                  onTap: () {
                    if (emailController.text.isEmpty &&
                        passwordController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Please enter your email and password"),
                          behavior: SnackBarBehavior.floating,
                          duration: Duration(seconds: 2),
                        ),
                      );
                    } else {
                      if (emailController.text.toLowerCase().endsWith(
                        '@gmail.com',
                      )) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Email must end with @gmail.com"),
                            behavior: SnackBarBehavior.floating,
                            duration: Duration(seconds: 2),
                          ),
                        );
                      }
                    }
                  },
                  text: 'Login',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
