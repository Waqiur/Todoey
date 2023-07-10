import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/screens/tasks_screen.dart';
import 'package:todoey/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  late String task;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 20.0, left: 40.0, right: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.lightBlueAccent,
                    fontWeight: FontWeight.w500),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  task = value;
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  Provider.of<TaskData>(context,listen: false).addTask(task);
                  Navigator.pop(context);
                },
                child: Container(
                  child: Text(
                    'Add',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                style: TextButton.styleFrom(
                    backgroundColor: Colors.lightBlueAccent),
              )
            ],
          ),
        ),
      ),
    );
  }
}
