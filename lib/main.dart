import 'package:challenge/screens/details_screen.dart';
import 'package:challenge/screens/list_screen.dart';
import 'package:challenge/screens/settings_screen.dart';
import 'package:challenge/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Challenge',
        theme: ThemeData(
          primaryColor: Colors.blueGrey,
          fontFamily: 'Muli',
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: WelcomeScreen(),
        routes: {
          '/listScreen': (context) => ListScreen(),
          DetailsScreen.routeName: (context) => DetailsScreen(),
          '/settings': (context) => SettingsScreen(),
        });
  }
}
