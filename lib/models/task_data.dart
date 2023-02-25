import 'package:flutter/foundation.dart';
import 'package:todoey_app/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: "1st Task"),
    Task(name: "2nd Task"),
    Task(name: "3rd Task"),
  ];
  int get tasksCount {
    return tasks.length;
  }

  void addTask(String? newTaskTitle) {
    tasks.add(Task(name: newTaskTitle.toString()));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }
}
