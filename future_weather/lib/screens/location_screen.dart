import 'package:flutter/material.dart';

import 'about_screen.dart';

class MyLocationWeather extends StatelessWidget{
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
    );
  }

}