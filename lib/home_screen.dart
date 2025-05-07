import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final iconList = <IconData>[
    Icons.dashboard,
    Icons.map,
    Icons.mail_outline,
    Icons.settings,
  ];

  final pages = [
    Center(
      child: Icon(Icons.dashboard_outlined, size: 200, color: Colors.teal),
    ),
    Center(child: Icon(Icons.map_outlined, size: 200, color: Colors.teal)),
    Center(child: Icon(Icons.mail_outline, size: 200, color: Colors.teal)),
    Center(child: Icon(Icons.settings_outlined, size: 200, color: Colors.teal)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Stack(
          children: [
            Text(
              'APLIKASI KU',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 35,
                fontWeight: FontWeight.bold,
                foreground:
                    Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 6
                      ..color = Colors.teal,
              ),
            ),
            Text(
              'CEBE NYENI MAZE',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: pages[_currentIndex],
      floatingActionButton: Container(
        width: 70,
        height: 70,
        child: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add_task, size: 32),
          backgroundColor: Colors.teal,
          shape: CircleBorder(),
          elevation: 8,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        activeIndex: _currentIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        onTap: (index) => setState(() => _currentIndex = index),
        backgroundColor: Colors.white,
        activeColor: Colors.teal,
        inactiveColor: Colors.grey,
      ),
    );
  }
}
