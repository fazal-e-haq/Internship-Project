import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  MyTextfield({super.key,required this.controller, required this.hintText});
final TextEditingController controller;
String hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: hintText == 'Password' ? true : false,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Theme.of(context).colorScheme.primary),
        fillColor: Theme.of(context).colorScheme.secondary,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.tertiary,
          ),
        ),
        enabled: true,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.tertiary,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red.shade200),
        ),
      ),
    );
  }
}
