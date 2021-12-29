import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTile;
  final Function(bool?) toggleCheckbox;
  final VoidCallback longPressCheckBox;

  TaskTile({required this.isChecked, required this.taskTile, required this.toggleCheckbox, required this.longPressCheckBox});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCheckBox,
      title: Text(
          taskTile,
          style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null,
          ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: toggleCheckbox,
      ),
    );
  }
}
