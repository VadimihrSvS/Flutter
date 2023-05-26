import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:provider/provider.dart';

import '../models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    String? newTaskTitle;

    return Container(
      color: Color(0xFF757575),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0))),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Add Task',
                style: TextStyle(color: Colors.lightBlueAccent, fontSize: 40.0),
              ),
              TextField(
                textAlign: TextAlign.center,
                autofocus: true,
                onChanged: (value){
                  newTaskTitle = value;
                },
              ),
              SizedBox(height: 30.0),
              Container(
                width: double.infinity,
                height: 50,
                child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.lightBlueAccent,
                  ),
                    onPressed: (){
                      Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle!);
                      Navigator.pop(context);
                    },
                    child: Text('Add',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
                ),)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
