import 'package:flutter/material.dart';
import 'package:task_timer/shared/menu_bottom.dart';
import 'package:task_timer/models/task.dart';

class TaskListScreen extends StatefulWidget {
  const TaskListScreen({ Key? key }) : super(key: key);

  @override
  State<TaskListScreen> createState() => _TaskListScreenState();
}

class _TaskListScreenState extends State<TaskListScreen> {
  List tasks = [Task('Task 1'), Task('Task 2')];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tasks')),
      bottomNavigationBar: const MenuBottom(),
      body: ListView(children: tasks.map((task) =>
          TextButton(onPressed: () {}, child: Text(task.name))).toList()
      )
    );
  }
}