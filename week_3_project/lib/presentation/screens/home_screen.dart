import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Padding(padding: .symmetric(horizontal: 26),child: Column(
        mainAxisAlignment: .center,
        children: [
          Row(children: [CircleAvatar(maxRadius: 50,backgroundColor: Colors.red,
          ),
          Text('Hello\n,'),
            Text('Hello,'),
          ],)
        ],
      ),)),
    );
  }
}
