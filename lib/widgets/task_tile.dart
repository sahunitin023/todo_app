// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:todoey_app/constants.dart';

class TaskTile extends StatelessWidget {
  final String taskTitle;
  final bool isChecked;
  final void Function(bool?)? checkboxCallback;
  final void Function()? longPressCallback;

  const TaskTile(
      {Key? key,
      this.isChecked = false,
      this.longPressCallback,
      required this.taskTitle,
      this.checkboxCallback})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      leading: Checkbox(
        activeColor: kPrimaryColor,
        checkColor: kSecondaryColor1,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
      title: Text(
        taskTitle,
        style: TextStyle(
          fontSize: 20.0,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
    );
  }
}
