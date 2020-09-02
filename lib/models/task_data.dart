
import 'package:todoey_app/models/task.dart';
import 'package:flutter/foundation.dart';
import 'dart:collection';


class TaskData extends ChangeNotifier{
List<Task> _tasks = [
    Task(name: 'Bring eggs'),
    Task(name: 'Buy milk'),
  ];
  
  UnmodifiableListView<Task> get tasks {
     return UnmodifiableListView(_tasks);
  }

  int get taskCount{
    return _tasks.length;
  }
  void addTaskText(String newTask){
     _tasks.add(Task(name: newTask));
     notifyListeners();
  }

  void updateTask(Task task){
    task.toggleTask();
    notifyListeners();
  }

  void deleteTask(Task task){
    tasks.remove(task);
    notifyListeners();
  }
}