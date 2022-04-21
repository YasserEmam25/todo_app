import 'package:flutter/material.dart';

import '../add_note/add_note.dart';

class NavMenu extends StatefulWidget {
  const NavMenu({Key? key}) : super(key: key);

  @override
  State<NavMenu> createState() => _NavMenuState();
}

class _NavMenuState extends State<NavMenu> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.yellow,
      home: DefaultTabController(
        length: 3,
        child: SafeArea(
          child: Scaffold(
            body: TabBarView(
              children: [
                Container(
                  color: Colors.orange,
                ),
                const AddNote(),
                Container(
                  color: Colors.lightGreen,
                ),
              ],
            ),
            appBar: TabBar(
              tabs: const [
                Tab(
                  icon: Icon(
                    Icons.calendar_month,
                    size: 40,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.add,
                    size: 40,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.menu,
                    size: 40,
                  ),
                ),
              ],
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey[500],
              indicatorSize: TabBarIndicatorSize.label,
              indicatorPadding: EdgeInsets.all(5.0),
              indicatorColor: Colors.black,
            ),
            backgroundColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
