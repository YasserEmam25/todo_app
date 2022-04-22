import 'package:flutter/material.dart';
import 'package:todo_app/ui/add_note/task_list.dart';

import '../../models/global.dart';

class AddNote extends StatefulWidget {
  const AddNote({Key? key}) : super(key: key);

  @override
  State<AddNote> createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: greyColor,
      child: Column(
        children: [
          Stack(
            overflow: Overflow.visible,
            children: [
              const TaskList(),
              Container(
                width: double.infinity,
                height: 140,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(20, 50, 0, 0),
                  child: Text(
                    "Notes",
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: 110, left: MediaQuery.of(context).size.width / 2 - 28),
                child: FloatingActionButton(
                  onPressed: () {},
                  child: const Icon(Icons.add, size: 40),
                  backgroundColor: redColor,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
