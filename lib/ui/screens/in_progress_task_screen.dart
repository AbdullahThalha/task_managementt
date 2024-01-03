import 'package:flutter/material.dart';
import 'package:task_managementt/ui/widgets/task_list_tile.dart';
import 'package:task_managementt/ui/widgets/user_profile_banner.dart';

class InProgressTaskScreen extends StatelessWidget {
  const InProgressTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const UserProfileBanner(),
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
    );
  }
}
