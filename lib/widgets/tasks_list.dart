import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, TaskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = TaskData.tasks[index];
            return TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              checkboxCallback: (bool checkBoxState) {
                TaskData.updateTask(task);
              },
              deleteTaskCallback: () {
                TaskData.deleteTask(task);
              },
            );
          },
          itemCount: TaskData.taskCount,
        );
      },
    );
  }
}
