import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

import 'package:future_weather/screen/JSONWeather.dart';

void main() => runApp(
  MultiProvider(
        providers: [
          ChangeNotifierProvider(builder: (context) => MyJSONWeather()),
        ],
         child :MyApp(),
        ),
 );

 class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyFirstPage(),
    );
  }

 }


class MyFirstPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold
    (
      appBar:AppBar
      (
        title: Text("Future Weather"),
      ),
      body: Container
      (
        child : ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Expanded
          (
            flex: 4,
            child : Container(
            child: Placeholder(),
            ),
          ),
          Expanded
          (
            flex: 4,
            child: Container(
            child : Placeholder(),
            ),
          ),
          Expanded
          (
            flex: 2,
            child : Container(
            child : Placeholder(),
            ),
          ),
        ],
      ),
      ),
    );
  }

}

