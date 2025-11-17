import 'package:flutter/material.dart';
import 'package:internship_project/MyWidgets/my_button.dart';
import 'package:internship_project/MyWidgets/my_textfield.dart';

class ForgetPassword extends StatelessWidget {
  ForgetPassword({super.key});

  TextEditingController emailcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Theme.of(context).colorScheme.surface,

      body: SafeArea(
        child: SingleChildScrollView(
          reverse: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Icon(Icons.password_rounded, size: 80),
                Text('Forget password', style: TextStyle(fontSize: 30)),
                SizedBox(height: 5),
                Text(
                  'Please enter the email address you would like your password reset information sent to',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(height: 20),
                MyTextfield(
                  controller: emailcontroller,
                  hintText: 'Enter your email',
                ),
                SizedBox(height: 30),
                MyButton(onTap: () {}, text: 'Submit Now'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
