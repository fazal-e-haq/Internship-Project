import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
   LoginButton({super.key,required this.onTap,required this.text});
GestureTapCallback onTap;
String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 45,
        decoration: BoxDecoration(
          color: Color(0xff6368D9),
          borderRadius: BorderRadius.circular(100)
        ),
        child: Center(child: Text(text,style: Theme.of(context).textTheme.bodySmall,)),
      ),
    );
  }
}
