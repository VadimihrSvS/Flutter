import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskTile extends StatelessWidget {

  final bool? isChecked;
  final String? taskTitle;
  final void Function(bool? to)? checkboxCallback;
  final void Function()? longpressCallback;
  TaskTile({this.isChecked, this.taskTitle, this.checkboxCallback, this.longpressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longpressCallback,
      title: Text(
        taskTitle!,
        style: TextStyle(decoration: isChecked! ? TextDecoration.lineThrough : TextDecoration.none),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: (newValue){
          checkboxCallback!(newValue);
        }
      )
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool isChecked;
  final void Function(bool?) toggleCheck;

  TaskCheckbox({required this.isChecked, required this.toggleCheck});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: isChecked,
      onChanged: toggleCheck
    );
  }
}
