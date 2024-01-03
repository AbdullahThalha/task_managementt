import 'package:flutter/material.dart';
import 'package:task_managementt/ui/screens/cancelled_task_screen.dart';
import 'package:task_managementt/ui/screens/completed_task_screen.dart';
import 'package:task_managementt/ui/screens/in_progress_task_screen.dart';
import 'package:task_managementt/ui/screens/new_task_screen.dart';

class BottomNavigationBaseScreen extends StatefulWidget {
  const BottomNavigationBaseScreen({super.key});

  @override
  State<BottomNavigationBaseScreen> createState() => _BottomNavigationBaseScreenState();

}

class _BottomNavigationBaseScreenState extends State<BottomNavigationBaseScreen> {
  int _selectedScreenIndex=0;

  final List<Widget>_screens=const [
    NewTaskScreen(),
    InProgressTaskScreen(),
    CancelledTaskScreen(),
    CompletedTaskScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedScreenIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedScreenIndex,
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle:const TextStyle(
          color: Colors.grey
        ),
        showUnselectedLabels: true,
        selectedItemColor: Colors.green,
        onTap: (int index){

          _selectedScreenIndex=index;
          print(_selectedScreenIndex);
          if(mounted){
            setState(() {

            });
          }

        },

        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.ac_unit),label: 'New'),
        BottomNavigationBarItem(icon: Icon(Icons.account_tree),label:'In progress'),
        BottomNavigationBarItem(icon: Icon(Icons.cancel_outlined),label: 'Cancel' ),
        BottomNavigationBarItem(icon: Icon(Icons.done_all),label: 'Completed'),
      ],
        
      ),

    );
  }
}
