// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:todoey_app/constants.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  late String taskName;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 14, 14, 14),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 40.0),
        decoration: const BoxDecoration(
          color: kSecondaryColor1,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: kPrimaryColor,
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextField(
              onChanged: (value) {
                taskName = value;
              },
              cursorColor: kPrimaryColor,
              decoration: const InputDecoration(
                hintText: 'Enter Task',
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: kPrimaryColor,
                    width: 10,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                elevation: 5.0,
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(30.0),
                child: const MaterialButton(
                  onPressed: null,
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'Add',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
