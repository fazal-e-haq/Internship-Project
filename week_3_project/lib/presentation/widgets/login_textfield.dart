import 'package:flutter/material.dart';

class LoginTextfield extends StatelessWidget {
    LoginTextfield({super.key,required this.hintText,this.controller});
String hintText;
TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return TextField(
controller: controller,
      decoration: InputDecoration(
hintText: hintText,
      ),

    );
  }
}
