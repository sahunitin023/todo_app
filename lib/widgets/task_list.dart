import 'package:flutter/material.dart';
import 'package:todoey_app/constants.dart';
import 'package:todoey_app/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/models/task_data.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class TaskList extends StatelessWidget {
  const TaskList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemCount: taskData.tasksCount,
          itemBuilder: ((context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              checkboxCallback: (checkboxState) {
                taskData.updateTask(task);
              },
              longPressCallback: () {
                Alert(
                  style: const AlertStyle(
                    backgroundColor: kSecondaryColor2,
                    descStyle: TextStyle(color: Colors.white),
                    titleStyle: TextStyle(color: Colors.white),
                  ),
                  context: context,
                  type: AlertType.warning,
                  title: "Delete Task",
                  desc: "Are You Sure?",
                  buttons: [
                    DialogButton(
                      color: kPrimaryColor,
                      onPressed: () {
                        taskData.removeTask(task);
                        Alert(context: context).dismiss();
                      },
                      width: 120,
                      child: const Text(
                        "DELETE",
                        style: TextStyle(
                          color: kSecondaryColor2,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    DialogButton(
                      color: kPrimaryColor,
                      onPressed: () {
                        Alert(context: context).dismiss();
                      },
                      width: 120,
                      child: const Text(
                        "CANCEL",
                        style: TextStyle(
                          color: kSecondaryColor2,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ).show();
              },
            );
          }),
          padding: const EdgeInsets.all(30.0),
        );
      },
    );
  }
}
