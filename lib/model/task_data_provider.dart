import 'package:flutter/material.dart';
import 'package:todo/model/tasks.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(taskName: 'buy medicine'),
    Task(taskName: 'buy milk', isDone: true),
    Task(taskName: 'buy cheese', isDone: false),
    Task(taskName: 'buy egg', isDone: true),
  ];

  List<Task> get tasks {
    return _tasks;
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String mytext) {
    final task = Task(taskName: mytext);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
