import 'package:flutter/material.dart';
import 'package:todoey_app/widgets/tasks_list.dart';
import 'add_tasks_screen.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/models/task_data.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Tooltip(
        message: 'Add Tasks',
        margin: EdgeInsets.all(5),
        textStyle: TextStyle(
            color: Color(0xff442C2E),
            fontSize: 18,
            fontFamily: 'Caveat',
            fontWeight: FontWeight.w500),
        showDuration: Duration(seconds: 1),
        decoration: BoxDecoration(
          color: Color(0xFFFEEAE6),
        ),
        child: FloatingActionButton(
          backgroundColor: Color(0xFFFEEAE6),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => AddTaskScreen(),
              isScrollControlled: false,
            );
          },
          child: Icon(
            Icons.add,
            color: Color(0xff442C2E),
          ),
        ),
      ),
      backgroundColor: Color(0xFFFEEAE6),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60, left: 25, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  child: Icon(
                    Icons.directions_bike,
                    color: Color(0xff442C2E),
                    size: 50,
                  ),
                  backgroundColor: Color(0xffFED2C7),
                  radius: 45,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'It\'s Time to Hustle.',
                  style: TextStyle(
                    color: Color(0xff442C2E),
                    fontSize: 31.7,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'RussoOne',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '${Provider.of<TaskData>(context).taskCount} Tasks',
                      style: TextStyle(
                        color: Color(0xff442C2E),
                        fontSize: 25,
                        fontFamily: 'DancingScript',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Provider.of<TaskData>(context, listen: false)
                            .clearList();
                      },
                      child: Tooltip(
                        message: 'Click to clear Task List',
                        textStyle: TextStyle(
                            color: Color(0xff442C2E),
                            fontSize: 18,
                            fontFamily: 'Caveat',
                            fontWeight: FontWeight.w500),
                        showDuration: Duration(seconds: 1),
                        decoration: BoxDecoration(
                          color: Color(0xFFFEEAE6),
                        ),
                        child: Text(
                          'Clear List',
                          style: TextStyle(
                            color: Color(0xff442C2E),
                            fontSize: 25,
                            fontFamily: 'DancingScript',
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Tooltip(
              message:
                  '        ~ Click on \'+\' to Add Tasks ~\n~ Press and hold on the Tasks to delete ~',
              preferBelow: true,
              textStyle: TextStyle(
                  color: Color(0xff442C2E),
                  fontSize: 18,
                  fontFamily: 'Caveat',
                  fontWeight: FontWeight.w500),
              decoration: BoxDecoration(
                color: Color(0xFFFEEAE6),
              ),
              showDuration: Duration(seconds: 6),
              padding: EdgeInsets.all(15),
              height: 30,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 0,
                ),
                child: TasksList(),
                decoration: BoxDecoration(
                  color: Color(0xffFED2C7),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
