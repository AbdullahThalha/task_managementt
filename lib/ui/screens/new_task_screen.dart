import 'package:flutter/material.dart';
import 'package:task_managementt/ui/screens/add_new_task_screen.dart';
import 'package:task_managementt/ui/widgets/screen_background.dart';
import 'package:task_managementt/ui/widgets/task_list_tile.dart';
import 'package:task_managementt/ui/widgets/user_profile_banner.dart';

import '../widgets/summary_card.dart';

class NewTaskScreen extends StatelessWidget {
  const NewTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
           const UserProfileBanner(),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: SummaryCard(
                      title: 'New',
                      number: 124,
                    ),
                  ),
                  Expanded(
                    child: SummaryCard(
                      title: 'Progress',
                      number: 124,
                    ),
                  ),
                  Expanded(
                    child: SummaryCard(
                      title: 'Cancelled',
                      number: 124,
                    ),
                  ),
                  Expanded(
                    child: SummaryCard(
                      title: 'Completed',
                      number: 124,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: ListView.separated(
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return const TaskListTile();
                    }, separatorBuilder: (BuildContext context, int index) {
                      return const Divider(height: 4,);
                },
                ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child:const Icon(Icons.add),
        onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context)=>const AddNewTaskScreen()));
        },
      ),
    );
  }
}



