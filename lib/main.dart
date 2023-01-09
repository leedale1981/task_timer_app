import 'package:flutter/material.dart';
import 'package:task_timer/screens/task_list_screen.dart';

void main() {
  runApp(const TaskTimerApp());
}

class TaskTimerApp extends StatelessWidget {
  const TaskTimerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      routes: {
        '/': (context) => const TaskListScreen()
      },
      initialRoute: '/',
    );
  }
}

