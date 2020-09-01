import 'package:flutter/material.dart';
import 'package:todoey_app/widgets/tasks_list.dart';
import 'add_tasks_screen.dart';
import 'package:todoey_app/models/task.dart';

class TasksScreen extends StatefulWidget {
  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  List<Task> tasks = [
    Task(name: 'Bring eggs'),
    Task(name: 'Buy milk'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFFFEEAE6),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => AddTaskScreen(
              (newTaskTitle) {
                print(newTaskTitle);
                setState(() {
                  tasks.add(Task(name: newTaskTitle));
                });
                Navigator.pop(context);
              },
            ),
          );
        },
        child: Icon(
          Icons.add,
          color: Color(0xff442C2E),
        ),
      ),
      backgroundColor: Color(0xFFFEEAE6),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60, left: 25, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    color: Color(0xff442C2E),
                    size: 30,
                  ),
                  backgroundColor: Color(0xffFED2C7),
                  radius: 30,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'It\'s Time to Hustle.',
                  style: TextStyle(
                    color: Color(0xff442C2E),
                    fontSize: 31,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'RussoOne',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '${tasks.length} Tasks',
                  style: TextStyle(
                    color: Color(0xff442C2E),
                    fontSize: 20,
                    fontFamily: 'DancingScript',
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 7,
              ),
              child: TasksList(tasks),
              decoration: BoxDecoration(
                color: Color(0xffFED2C7),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
