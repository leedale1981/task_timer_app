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
      body: Padding(
          padding: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
          child: ListView(children: tasks.map((task) =>
                    TextButton(
                        style: TextButton.styleFrom(
                          alignment: AlignmentDirectional.centerStart,
                          padding: const EdgeInsets.all(20),
                          foregroundColor: Colors.white,
                          textStyle: const TextStyle(fontSize: 24),
                          backgroundColor: Colors.blue
                        ),
                        onPressed: () {

                        },
                        child: Row(
                          children: [
                            Text(task.name),
                            const Icon(Icons.play_arrow)
                          ]
                        )
                    )
                ).toList())),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
      ),
    );
  }
}