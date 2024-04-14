import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  Homepage({super.key});
  int selectedIndex = 0;
  static const List<Widget> widgetOptions = <Widget>[
    Text('Home Page'),
    Text('Search Page'),
    Text('Add Page'),
    Text('Notifications Page'),
    Text('Profile Page'),
  ];

  void onItemTapped(int index) {
    selectedIndex = index;
  }

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('Home')),
      ),
      body:Stack(
        children: <Widget>[
          Image.asset("assets/1.png"),
          Text("Days")
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            backgroundColor: Colors.pink[100],
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Business',
            backgroundColor: Colors.pink[100],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notes_outlined),
            label: 'School',
            backgroundColor: Colors.pink[100],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school_outlined),
            label: 'School',
            backgroundColor: Colors.pink[100],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.health_and_safety_outlined),
            label: 'School',
            backgroundColor: Colors.pink[100],
          ),
        ],
      ),
    );
  }
}
