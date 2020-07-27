import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todey/modals/task_data.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String text;
  final Function checkBoxCallback;
  final Function longPressCallback;
  TaskTile(
      {this.isChecked,
      this.text,
      this.checkBoxCallback,
      this.longPressCallback});
  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: longPressCallback,
        title: Text(
          text,
          style: TextStyle(
              decoration: (isChecked ? TextDecoration.lineThrough : null)),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          //onChanged: toggleCheckBoxState,
          value: isChecked,
          onChanged: checkBoxCallback,
        ));
  }
}
