import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'about.dart';

void main() => runApp(MyApp());

class Weather extends StatelessWidget {
  final Map<String, dynamic> data;
  Weather(this.data);
  Widget build(BuildContext context) {
    double temp = data['main']['temp'];
    return new Text(
      '${temp.toStringAsFixed(1)} °C',
      style: Theme.of(context).textTheme.display4,
    );
  }
}
class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Weather',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyWeatherPage(),
    );
  }
}

class MyWeatherPage extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyWeatherPage> {
    Future<http.Response> _response;

  void initState() {
    super.initState();
    _refresh();
  }

  void _refresh() {
    setState(() {
      _response = http.get(
        'http://api.apixu.com/v1/forecast.json?key=6387f7899beb445e922110449191208&q=Paris'
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title: Text("Kuala Lumpur",),
          centerTitle : true,
        
        actions: <Widget>[
          IconButton(icon: Icon(Icons.info),
            onPressed:(){
              Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyAboutPage()),
                  );
                  
                  
            }
            
          ),
        ],
     
      ),
      body: new Stack(fit: StackFit.expand, 
      children: <Widget>[
        new Image.asset("name",fit: BoxFit.fitHeight,),
        new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 40.0),
              child: new Text("Kuala Lumpur", 
              textAlign: TextAlign.center,
              style: new TextStyle(color: Colors.white,
              fontSize: 30.0,
               ),
              ),
            ),
            new Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 100.0),
              child: new Column(children: <Widget>[
                new Text("20 C",
                style: new TextStyle(
                  color: Colors.white,
                  fontSize: 80.0
                )),
                new Text(" ",
                style: new TextStyle(
                  color:Colors.white,
                  fontSize: 45.0
                )),
                new Text("Humidity 80%",
                style: new TextStyle(color: Colors.white,
                fontSize: 30.0
          ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
 
}



