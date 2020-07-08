import 'package:challenge/screens/detailsScreen.dart';
import 'package:challenge/screens/settings_screen.dart';
import 'package:flutter/material.dart';

import 'list_screen.dart';

class OverallScreen extends StatefulWidget {
  @override
  _OverallScreenState createState() => _OverallScreenState();
}

class _OverallScreenState extends State<OverallScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: index == 0 ? ListScreen() : SettingsScreen(),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blueGrey,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.star,
              size: 30,
              color: Colors.yellow[700],
            ),
            icon: Icon(Icons.star),
            title: Text("Trending ",
                style: TextStyle(fontWeight: FontWeight.w700)),
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.settings,
              size: 30,
              color: Colors.lightBlueAccent,
            ),
            icon: Icon(Icons.settings),
            title:
                Text("Settings", style: TextStyle(fontWeight: FontWeight.w700)),
          )
        ],
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
      ),
    );
  }
}
