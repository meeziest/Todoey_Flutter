import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) {
          return Consumer<TaskData>(
            builder: (context, taskData, child){
              final task = taskData.tasks[index];
              return TaskTile(
                taskTile: task.taskName,
                isChecked: task.isChecked,
                toggleCheckbox: (checkboxState){
                  taskData.updateTask(task);
                },
                longPressCheckBox: (){
                  taskData.deleteTask(task);
                },
              );
            },
          );
        },
        itemCount: context.read<TaskData>().tasksCount,
    );
  }
}