import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:week_3_project/presentation/widgets/login_textfield.dart';

import '../widgets/login_button.dart';

class SignUpScreen extends StatelessWidget {
    SignUpScreen({super.key});
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
    TextEditingController confirmpasswordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsetsGeometry.symmetric(horizontal: 36),
              child: Column(
              
                children: [
                  const Image(image: AssetImage('assets/signup_pic.png')),
                  LoginTextfield(
                    controller: emailcontroller,
                    hintText: 'Email',
                  ),
                  const SizedBox(height: 8,),
                   LoginTextfield(
                      controller: passwordcontroller,
                      hintText: 'Password'),
                  const SizedBox(height: 8,),
                  LoginTextfield(
                      controller: confirmpasswordcontroller,
                      hintText: 'Confirm Password'),
                  const SizedBox(height: 40,),
                  LoginButton(onTap: (){

                  },),
                  const SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: .center,
                    children: [
                      Text('Don\'t have an account? ',style: GoogleFonts.poppins(color: Colors.black26),),
                       GestureDetector(
                          onTap: (){

                          },
                          child: Text('Create account.',style: GoogleFonts.poppins(color: Color(0xff6368D9)),))
                    ],)

                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}
