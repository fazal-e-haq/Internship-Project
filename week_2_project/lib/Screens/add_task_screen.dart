import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   AlertDialog(
      content: Container(
        height: 250,
        width: 350,
        color: Colors.red,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'Add new task',
                  enabledBorder: OutlineInputBorder(),
                  enabled: true,
                  focusedBorder: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(onPressed: (){}, child: Text('Cancel')),
                  SizedBox(width: 8,),
                  ElevatedButton(onPressed: (){}, child: Text('Add')),
                ],)
            ],
          ),
        ),
      ),
    );
  }
}
