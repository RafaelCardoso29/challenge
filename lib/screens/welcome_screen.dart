import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'overall_screen.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      fit: StackFit.loose,
      children: <Widget>[
        SplashScreen(
          seconds: 5,
          gradientBackground: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [ThemeData().primaryColor, Colors.white],
          ),
          navigateAfterSeconds: OverallScreen(),
          loaderColor: Colors.transparent,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.80,
          height: MediaQuery.of(context).size.height / 2,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://raw.githubusercontent.com/NeobrainMobile/coding-challenge/master/splash_screen_logo.png'),
                  fit: BoxFit.fill)),
        ),
      ],
    );
  }
}
