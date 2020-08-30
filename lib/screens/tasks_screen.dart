import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFFFEEAE6),
        onPressed: null,
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
                  'Welcome to Hustle',
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
                  '12 Tasks',
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
