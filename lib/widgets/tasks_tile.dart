import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  final bool isChecked;
  final String taskName;
  final Function checkBoxCallback;
  final Function taskDelete;

  TasksTile(
      {this.isChecked, this.taskName, this.checkBoxCallback, this.taskDelete});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: taskDelete,
        title: Text(
          taskName,
          style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Checkbox(
            activeColor: Colors.lightBlueAccent,
            value: isChecked,
            onChanged: checkBoxCallback));
  }
}
