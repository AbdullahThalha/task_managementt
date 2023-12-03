import 'package:flutter/material.dart';
import 'package:task_managementt/ui/screens/splash_screen.dart';

class TaskManagerApp extends StatelessWidget {
  const TaskManagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Manger',
      theme: ThemeData(
          brightness: Brightness.light
      ),
      darkTheme: ThemeData(
          brightness:Brightness.dark
      ),
      themeMode: ThemeMode.light,
      home: const SplashScreen(),

    );
  }
}
