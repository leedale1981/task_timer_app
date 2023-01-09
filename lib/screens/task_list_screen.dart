import 'package:flutter/material.dart';
import 'package:task_timer/shared/menu_bottom.dart';

class TaskListScreen extends StatelessWidget {
  const TaskListScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tasks')),
      bottomNavigationBar: const MenuBottom()
    );
  }
}