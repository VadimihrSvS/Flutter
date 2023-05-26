import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
      child: Consumer<TaskData>(
        builder: (context, taskData, child){
          return ListView.builder(itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
                taskTitle: task.name,
                isChecked: task.isDone,
                checkboxCallback: (checkboxState){
                  taskData.updateTask(task);
                },
              longpressCallback: () => taskData.deleteTask(task!),
            );
          },
            itemCount: taskData.tasks.length,
          );
        }
      ),
    );
  }
}
