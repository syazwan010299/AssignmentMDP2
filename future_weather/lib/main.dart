import 'package:flutter/material.dart';
import 'package:future_weather/screens/current_weather.dart';
import 'package:future_weather/screens/location_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        accentColor: Colors.lightBlue[600],
      ),
      home: MyWeatherApp(),
    );
  }
}

class MyWeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        centerTitle: true,
        title: Text("Kuala Lumpur"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.menu, color: Colors.white),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyLocationWeather()),
                );
              }),
        ],
      ),
      body: 
        MyCurrentWeather(),
      
    );
  }
}
