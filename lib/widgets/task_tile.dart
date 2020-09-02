import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final Function deleteTaskCallback;
  TaskTile({this.isChecked,this.taskTitle,this.checkboxCallback,this.deleteTaskCallback});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked? TextDecoration.lineThrough:null,
          fontFamily: 'Schoolbell',
          fontSize: 20,
        ),
        
      ),
      leading: Icon(
        Icons.whatshot,
        color: Color(0xff442C2E),
      ),
      trailing: Checkbox(
      activeColor: Color(0xff442C2E),
      checkColor: Color(0xFFFEEAE6),
      value: isChecked,
      onChanged: checkboxCallback,
    ),
    onLongPress: deleteTaskCallback,
    );
  }
}




