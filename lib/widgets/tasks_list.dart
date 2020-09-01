import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoey_app/models/task.dart';


class TasksList extends StatefulWidget {

  final List<Task> tasks;
  TasksList(this.tasks);

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: widget.tasks[index].name,
          isChecked: widget.tasks[index].isDone,
          checkboxCallback: (bool checkBoxState) {
            setState(() {
              widget.tasks[index].toggleTask();
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
