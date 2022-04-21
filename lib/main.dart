import 'package:flutter/material.dart';
import 'package:todo_app/ui/add_note/add_note.dart';
import 'package:todo_app/ui/navigation/navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const NavMenu(),
    );
  }
}
