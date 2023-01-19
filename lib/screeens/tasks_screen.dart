import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: const FloatingActionButton(
          onPressed: null,
          backgroundColor: Colors.amber,
          child: Icon(Icons.add),
        ),
        backgroundColor: Colors.amber,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(30.0, 60.0, 30.0, 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 19, 19, 19),
                    radius: 30.0,
                    child: Icon(
                      Icons.note,
                      color: Colors.amber,
                      size: 30.0,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Todoey',
                    style: TextStyle(
                      color: Color.fromARGB(255, 19, 19, 19),
                      fontSize: 50.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    '12 Tasks',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Color.fromARGB(255, 19, 19, 19),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 19, 19, 19),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: ListView(
                  padding: const EdgeInsets.all(30.0),
                  children: const [
                    ListTile(
                      leading: Checkbox(value: false, onChanged: null),
                      title: Text(
                        'A Task',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                    ListTile(
                      leading: Checkbox(value: false, onChanged: null),
                      title: Text(
                        'A Task',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                    ListTile(
                      leading: Checkbox(value: false, onChanged: null),
                      title: Text(
                        'A Task',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                    ListTile(
                      leading: Checkbox(value: false, onChanged: null),
                      title: Text(
                        'A Task',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                    ListTile(
                      leading: Checkbox(value: false, onChanged: null),
                      title: Text(
                        'A Task',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                    ListTile(
                      leading: Checkbox(value: false, onChanged: null),
                      title: Text(
                        'A Task',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                    ListTile(
                      leading: Checkbox(value: false, onChanged: null),
                      title: Text(
                        'A Task',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                    ListTile(
                      leading: Checkbox(value: false, onChanged: null),
                      title: Text(
                        'A Task',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
