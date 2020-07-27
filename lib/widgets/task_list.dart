import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todey/modals/tasks.dart';
import 'package:provider/provider.dart';
import 'package:todey/modals/task_data.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
            itemBuilder: (context, index) {
              final task = taskData.tasks[index];
              return TaskTile(
                text: task.name,
                isChecked: task.isDone,
                checkBoxCallback: (checkboxstate) {
                  taskData.updateTask(task);
                },
                longPressCallback: () {
                  taskData.deleteTask(task);
                },
              );
            },
            itemCount: taskData.taskCount);
      },
    );
  }
}
