import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
 
static String newTaskTitle;
  @override
  Widget build(BuildContext context) {
    

    return Container(
      color: Color(0xff75605A),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Color(0xFFFEEAE6),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff442C2E),
                fontSize: 30,
                fontFamily: 'Kalam',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                cursorColor: Color(0xff442C2E),
                onChanged: (value) {
                  print(value);
                  newTaskTitle = value;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: FlatButton(
                onPressed: () {
                  Provider.of<taskData>(context).addTaskText(newTaskTitle);
                  Navigator.pop(context);
                },
                
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Add',
                    style: TextStyle(color: Color(0xFFFEEAE6), fontSize: 20),
                  ),
                ),
                color: Color(0xff442C2E),
              ),
            )
          ],
        ),
      ),
    );
  }
}
