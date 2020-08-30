import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a task.',
        style: TextStyle(
          fontFamily: 'Schoolbell',
          fontSize: 20,
        ),
      ),
      leading: Icon(
        Icons.whatshot,
        color: Color(0xff442C2E),
      ),
      trailing: Checkbox(
        value: false,
        onChanged: null,
      ),
    );
  }
}
