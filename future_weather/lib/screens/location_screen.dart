import 'package:flutter/material.dart';

import 'about_screen.dart';

class MyLocationWeather extends StatefulWidget {
  @override
  _MyLocationWeatherState createState() => _MyLocationWeatherState();
}

class _MyLocationWeatherState extends State<MyLocationWeather> {
  String _inputLocation = "";

  TextEditingController _textFieldController = TextEditingController();
  _onSubmitted(String location) {
    setState(() => _inputLocation = location);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Locations"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info_outline),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyAboutPage()),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 50.0),
            child: TextField(
              controller: _textFieldController,
              onSubmitted: _onSubmitted,
              decoration: InputDecoration(
                hintText: 'Enter another location',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
