import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {

  List<Task> _tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread')
  ];

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  int get taskCount => _tasks.length;

  void addTask(String taskName) {
    final task = Task(name: taskName);
    _tasks.add(task);

    notifyListeners();
  }
}