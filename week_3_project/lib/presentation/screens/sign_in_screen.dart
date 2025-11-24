import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:week_3_project/presentation/widgets/login_button.dart';
import 'package:week_3_project/presentation/widgets/login_textfield.dart';
import 'package:week_3_project/routes/app_routes.dart';

class SignInScreen extends StatelessWidget {
   SignInScreen({super.key});
TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            reverse: true,
            child: Padding(
              padding: const EdgeInsetsGeometry.symmetric(horizontal: 36),
              child: Column(

                children: [
                  const Image(image: AssetImage('assets/login_pic.png')),
                  SizedBox(height: 20,),
                  LoginTextfield(
                    controller: emailcontroller,
                    hintText: 'Email',
                  ),
                  SizedBox(height: 8,),
                  LoginTextfield(
                      controller: passwordcontroller,
                      hintText: 'Password'),
                  SizedBox(height: 40,),
                  LoginButton(onTap: (){
                    Navigator.pushReplacementNamed(context, AppRoutes.home);
                  },),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: .center,
                    children: [
                    Text('Don\'t have an account? ',style: GoogleFonts.poppins(color: Colors.black26),),
                    GestureDetector(
                      onTap: (){
                        AppRoutes.replace(context, AppRoutes.signup);

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
