import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings", style: TextStyle(fontWeight: FontWeight.w800)),
        centerTitle: true,
      ),
      body: Center(
        child: _buildCard(),
      ),
    );
  }

  _buildCard() {
    return Card(
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.settings,
              size: 100,
              color: Colors.blueAccent,
            ),
            SizedBox(
              height: 14,
            ),
            Text(
              "Settings Screen",
              style: TextStyle(fontWeight: FontWeight.w900),
            )
          ],
        ),
      ),
    );
  }
}
