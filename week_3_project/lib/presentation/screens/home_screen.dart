import 'package:flutter/material.dart';
import 'add_task_screen.dart'; // import your AddTaskScreen

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Mutable task list
  List<Map<String, String>> tasks = [
    {'title': 'Buy groceries', 'time': '10:00 AM'},
    {'title': 'Meeting with team', 'time': '1:00 PM'},
    {'title': 'Workout', 'time': '6:00 PM'},
    {'title': 'Read a book', 'time': '9:00 PM'},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top container
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xff6368D9), Colors.deepPurple],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 15,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Hello, Fazal!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Today you have ${tasks.length} tasks',
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      const Icon(Icons.check_circle, color: Colors.white),
                      const SizedBox(width: 8),
                      Text(
                        'Completed: ${tasks.where((t) => t['done'] == 'true').length}',
                        style: const TextStyle(color: Colors.white),
                      ),
                      const SizedBox(width: 20),
                      const Icon(Icons.pending_actions, color: Colors.white),
                      const SizedBox(width: 8),
                      Text(
                        'Pending: ${tasks.where((t) => t['done'] != 'true').length}',
                        style: const TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),

            // Add Task Button
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text('Add Task'),
                onPressed: () async {
                  final newTask = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const AddTaskScreen(),
                    ),
                  );

                  if (newTask != null) {
                    setState(() {
                      tasks.add(newTask); // add new task dynamically
                    });
                  }
                },
              ),
            ),

            const SizedBox(height: 20),
            Text(
              'Your Tasks',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20),

            // Task list
            Column(
              children: tasks.map((task) {
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 4,
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  child: ListTile(
                    leading:
                    const Icon(Icons.task_alt, color: Colors.deepPurple),
                    title: Text(task['title']!),
                    subtitle: Text(task['description'] ?? task['time']!),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.check, color: Colors.green),
                          onPressed: () {
                            setState(() {
                              task['done'] = 'true'; // mark done
                            });
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          onPressed: () {
                            setState(() {
                              tasks.remove(task); // delete task
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
