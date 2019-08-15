import 'package:flutter/material.dart';
import 'package:future_weather/screens/JSONWeather.dart';
import 'package:future_weather/screens/current_weather.dart';
import 'package:future_weather/screens/location_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(builder: (context) => MyJSONWeather()),
        ],
        child: MyApp(),
      ),
    );

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
      body: MyCurrentWeather(),
    );
  }
}
