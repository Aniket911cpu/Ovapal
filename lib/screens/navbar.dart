import 'package:flutter/material.dart';
import 'package:ovapal/screens/arcticle.dart';
import 'package:ovapal/screens/calander.dart';
import 'package:ovapal/screens/doctor.dart';
import 'package:ovapal/screens/homepage.dart';
import 'package:ovapal/screens/notes.dart';

class Navigation extends StatefulWidget {
  Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {

  int selectedIndex = 0;
  static const List<Widget> widgetOptions = <Widget>[
    Homepage(),
    Calender(),
    Note(),
    article(),
    Doctor(),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            backgroundColor: Colors.pink[100],
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Calender',
            backgroundColor: Colors.pink[100],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notes_outlined),
            label: 'Notes',
            backgroundColor: Colors.pink[100],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school_outlined),
            label: 'Article',
            backgroundColor: Colors.pink[100],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.health_and_safety_outlined),
            label: 'Doctor',
            backgroundColor: Colors.pink[100],
          ),
        ],
      ),
    );
  }
}
