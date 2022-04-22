import 'package:flutter/material.dart';

class TaskList extends StatefulWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 40),
      child: SizedBox(
        height: MediaQuery.of(context).size.height - 130,
        child: Container(
          margin: const EdgeInsets.only(top: 160),
          child: ListView(
            shrinkWrap: true,
            children: [
              Container(
                height: 100,
                color: Colors.blue,
              ),
              Container(
                height: 100,
                color: Colors.grey,
              ),
              Container(
                height: 100,
                color: Colors.blue,
              ),
              Container(
                height: 100,
                color: Colors.grey,
              ),
              Container(
                height: 100,
                color: Colors.blue,
              ),
              Container(
                height: 100,
                color: Colors.grey,
              ),
              Container(
                height: 100,
                color: Colors.blue,
              ),
              Container(
                height: 100,
                color: Colors.grey,
              ),
              Container(
                height: 100,
                color: Colors.blue,
              ),
              Container(
                height: 100,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
