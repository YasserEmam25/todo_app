class TaskModel {
  List<Task> getTasks() {
    List<Task> tasks = [
      Task("First title"),
      Task("second title"),
      Task("Third title"),
      Task("fourth title"),
      Task("Fifth title"),
      Task("Sixth title"),
    ];
    return tasks;
  }
}

class Task {
  String title;
  late String note;
  late DateTime timeToComplete;
  late bool completed;
  late String repeats;
  late DateTime deadline;
  late List<DateTime> reminder;
  late String taskId;

  Task(this.title) {
    completed = false;
  }
}
