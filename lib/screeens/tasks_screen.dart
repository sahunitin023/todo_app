// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:todoey_app/constants.dart';
import 'add_task_screen.dart';
import 'package:todoey_app/widgets/task_list.dart';
import 'package:todoey_app/widgets/task.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({Key? key}) : super(key: key);
  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  List<Task> tasks = [
    Task(name: "1st Task"),
    Task(name: "2nd Task"),
    Task(name: "3rd Task"),
  ];

  Widget buildBottomSheet(BuildContext context) {
    return AddTaskScreen(
      onAddCallBack: (newTaskTitle) {
        setState(() {
          tasks.add(Task(name: newTaskTitle.toString()));
        });
        Navigator.pop(context);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: buildBottomSheet,
            );
          },
          backgroundColor: kPrimaryColor,
          child: const Icon(Icons.add),
        ),
        backgroundColor: kPrimaryColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(30.0, 60.0, 30.0, 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    backgroundColor: kSecondaryColor1,
                    radius: 30.0,
                    child: Icon(
                      Icons.list,
                      color: kPrimaryColor,
                      size: 40.0,
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Text(
                    'Todoey',
                    style: TextStyle(
                      color: kSecondaryColor1,
                      fontSize: 50.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    '${tasks.length} Tasks',
                    style: const TextStyle(
                      fontSize: 18.0,
                      color: kSecondaryColor1,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: kSecondaryColor2,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: TaskList(tasks),
              ),
            )
          ],
        ),
      ),
    );
  }
}
