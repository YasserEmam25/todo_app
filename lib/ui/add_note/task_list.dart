import 'package:flutter/material.dart';
import 'package:todo_app/ui/add_note/add_note_view_model.dart';

import '../../models/global.dart';

class TaskList extends StatefulWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  // function that creates children of ListView
  List<Widget> list = [];
  List<Task> taskList = TaskModel().getTasks();

  getTasks() {
    for (int i = 0; i < 6; i++) {
      list.add(Container(
        margin: const EdgeInsets.only(bottom: 18, left: 10, right: 10),
        padding: const EdgeInsets.all(8),
        height: 100,
        key: ValueKey(taskList[i]),
        decoration: BoxDecoration(
            color: redColor,
            borderRadius: const BorderRadius.all(Radius.circular(14)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                spreadRadius: 3,
                blurRadius: 7,
              )
            ]),
        child: Container(
          margin: const EdgeInsets.only(left: 40),
          child: Text(
            "${taskList[i].title}",
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ));
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getTasks();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 80),
      child: SizedBox(
        height: MediaQuery.of(context).size.height - 170,
        child: Container(
          margin: const EdgeInsets.only(top: 160),
          child: Theme(
            data: ThemeData(
              canvasColor: Colors.transparent,
            ),
            child: ReorderableListView.builder(
              itemCount: list.length,
              itemBuilder: (context, ind) {
                return list[ind];
              },
              onReorder: (int oldIndex, int newIndex) {
                setState(() {
                  final index = newIndex > oldIndex ? newIndex - 1 : newIndex;
                  final task = taskList.removeAt(oldIndex);
                  final listTemp = list.removeAt(oldIndex);

                  taskList.insert(index, task);
                  list.insert(index, listTemp);
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
