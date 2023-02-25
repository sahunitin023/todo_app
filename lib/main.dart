import 'package:flutter/material.dart';
import 'package:todoey_app/models/task_data.dart';
import 'screeens/tasks_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => TaskData(),
          builder: (context, child) => const MyApp(),
        ),
      ],
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const TasksScreen(),
    );
  }
}
