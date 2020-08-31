import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}
 
class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a task.',
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
      trailing: TaskCheckbox(checkBoxState: isChecked,toggleCheckBoxState: (bool checkBoxState){
        setState(() {
          isChecked=checkBoxState;
        });
      },),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  
  final bool checkBoxState;
  final Function toggleCheckBoxState;
  TaskCheckbox({this.checkBoxState,this.toggleCheckBoxState});
  
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Color(0xff442C2E),
      checkColor: Color(0xFFFEEAE6),
      value: checkBoxState,
      onChanged: toggleCheckBoxState,
    );
  }
}
