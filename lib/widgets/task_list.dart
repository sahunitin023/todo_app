import 'package:flutter/material.dart';
import 'package:todoey_app/widgets/task.dart';
import 'package:todoey_app/widgets/task_tile.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasks;
  const TaskList(this.tasks, {Key? key}) : super(key: key);

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.tasks.length,
      itemBuilder: ((context, index) {
        return TaskTile(
          taskTitle: widget.tasks[index].name,
          isChecked: widget.tasks[index].isDone,
          checkboxCallback: (checkboxState) {
            setState(() {
              widget.tasks[index].toggleDone();
            });
          },
        );
      }),
      padding: const EdgeInsets.all(30.0),
    );
  }
}
