import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/model/task_data_provider.dart';
import 'tasks_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //  print('widget   $widget');
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TasksTile(
              taskName: taskData.tasks[index].taskName,
              isChecked: taskData.tasks[index].isDone,
              checkBoxCallback: (value) {
                print(value);
                taskData.updateTask(taskData.tasks[index]);
              },
              taskDelete: () {
                taskData.deleteTask(taskData.tasks[index]);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
