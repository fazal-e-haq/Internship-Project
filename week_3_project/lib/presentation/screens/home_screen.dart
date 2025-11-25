import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: .symmetric(horizontal: 26),
            child: Column(
              mainAxisAlignment: .start,
              crossAxisAlignment: .start,
              children: [
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: .start,
                  children: [
                    CircleAvatar(maxRadius: 35, backgroundColor: Colors.red),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: .start,
                      children: [
                        Text(
                          'Hello,',
                          style: TextStyle(fontSize: 18, fontWeight: .w500),
                        ),
                        Text(
                          'Fazal-e-haq',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 60),
                Text(
                  'Let’s check out your today’s task',
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                SizedBox(height: 8),
                Container(
                  width: double.infinity,
                  height: 180,
                  decoration: BoxDecoration(
                    color: Color(0xff6368D9),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Task Categories',
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                Wrap(
                  alignment: .spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        height: 80,
                        width: 130,
                        color: Colors.red,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        height: 80,
                        width: 130,
                        color: Colors.red,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        height: 80,
                        width: 130,
                        color: Colors.red,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        height: 80,
                        width: 130,
                        color: Colors.red,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        height: 80,
                        width: 130,
                        color: Colors.red,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        height: 80,
                        width: 130,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
