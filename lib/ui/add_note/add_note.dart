import 'package:flutter/material.dart';

class AddNote extends StatefulWidget {
  const AddNote({Key? key}) : super(key: key);

  @override
  State<AddNote> createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black87,
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              overflow: Overflow.visible,
              children: [
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
                // add add button
                Positioned(
                  bottom: -26,
                  child: FloatingActionButton(
                    onPressed: () {},
                    child: const Icon(Icons.add, size: 40),
                    backgroundColor: Colors.red[400],
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
