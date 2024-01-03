import 'package:flutter/material.dart';
import 'package:task_managementt/ui/widgets/screen_background.dart';
import 'package:task_managementt/ui/widgets/user_profile_banner.dart';

class AddNewTaskScreen extends StatelessWidget {
  const AddNewTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const UserProfileBanner(),
            Column(
              children: [
                const SizedBox(height: 16,),
                Text(
                  'Add new task',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 16,),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Title'
                  ),
                ),
                const SizedBox(height: 8,),
                TextFormField(
                  maxLines:4,
                  decoration: const InputDecoration(
                    hintText: 'Description',
                  ),
                ),

                const SizedBox(height: 16,),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {

                      },
                      child: const Icon(Icons.arrow_forward_ios)),
                ),
              ],
            ),
          ],
        ),

      ),
    );
  }
}
