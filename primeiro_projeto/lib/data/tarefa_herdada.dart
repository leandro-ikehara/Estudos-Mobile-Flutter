import 'package:flutter/material.dart';
import 'package:primeiro_projeto1/components/tarefas.dart';

class TaskInherited extends InheritedWidget {
  TaskInherited({
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);

  final List<Task> taskList = [
    Task('Estudar Flutter', 'assets/images/flutter.png', 3),
    Task('Treinar Academia', 'assets/images/smartfit.jpg', 4),
    Task('Praticar Yoga', 'assets/images/vidya.jpg', 3),
  ];

  void newTask(String name, String picture, int difficulty) {
    taskList.add(Task(name, picture, difficulty));
  }

  static TaskInherited of(BuildContext context) {
    final TaskInherited? result =
        context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    assert(result != null, 'No TaskInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return oldWidget.taskList.length != taskList.length;
  }
}
