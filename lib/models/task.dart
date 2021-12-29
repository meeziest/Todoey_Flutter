class Task{
  final String taskName;
  bool isChecked;

  Task({required this.taskName, this.isChecked = false});

  void toggleDone(){
    isChecked = !isChecked;
  }
}