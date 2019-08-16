import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'JSONWeather.dart';
import 'about_screen.dart';
import 'package:http/http.dart' as http;

class MyLocationWeather extends StatefulWidget {
  @override
  _MyLocationWeatherState createState() => _MyLocationWeatherState();
}

class _MyLocationWeatherState extends State<MyLocationWeather> {
  TextEditingController _textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    var apixuNoListen = Provider.of<MyJSONWeather>(context, listen: false);


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
      // body: ListView(

      // ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 50.0),
            child: TextField(
              controller: _textFieldController,
              decoration: InputDecoration(
                hintText: 'Enter another location',
              ),
            ),
          ),
          RaisedButton(
            child: Text('SEARCH'),
            onPressed: () {
               Provider.of<MyJSONWeather>(context).location = _textFieldController.text;
               var city =  Provider.of<MyJSONWeather>(context).location;
               if (city == null){
                 return null;
               }else{
               apixuNoListen.fetch();}
               Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
