// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  String taskTitle;
  void Function(bool?)? onChange;
  TaskTile({Key? key, required this.taskTitle, this.onChange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(value: false, onChanged: onChange),
      title: Text(
        taskTitle,
        style: const TextStyle(fontSize: 20.0),
      ),
    );
  }
}
