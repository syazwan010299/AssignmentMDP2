import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyWeatherPage(),
    );
  }
}

class MyWeatherPage extends StatefulWidget{
  @override
  _MyWeatherPageState createState() => _MyWeatherPageState();
}

class _MyWeatherPageState extends State<MyWeatherPage> {
  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}
