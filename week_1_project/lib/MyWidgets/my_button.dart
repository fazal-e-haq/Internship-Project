import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
   MyButton({super.key,required this.onTap,required this.text});
 var onTap;
 String text;
  @override
  Widget build(BuildContext context) {
    return   GestureDetector(
      onTap: onTap,
      child: Container(
        height: 45,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(child: Text('$text')),
      ),
    );
  }
}
