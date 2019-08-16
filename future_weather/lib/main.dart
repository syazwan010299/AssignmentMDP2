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
      debugShowCheckedModeBanner: false,
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
    Widget current;

    var apixu = Provider.of<MyJSONWeather>(context);

    if (apixu.forecast == null) {
      current = Container(
        alignment: Alignment.center,
        child: CircularProgressIndicator(
          valueColor: new AlwaysStoppedAnimation<Color>(Colors.grey),
        ),
      );
    } else {
      current = MyCurrentWeather();
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Current Weather'),
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
      backgroundColor: Colors.blue[400],
      body: current,
    );
  }
}
