import 'package:flutter/material.dart';

class MenuBottom extends StatelessWidget {
  const MenuBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (int index) {
        switch (index) {
          case 0:
            Navigator.pushNamed(context, '/');
            break;
        }
      },
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.task_alt_rounded),
            label: 'Tasks'
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.report_off_rounded),
            label: 'Reports'
        ),
      ]
    );
  }
}
