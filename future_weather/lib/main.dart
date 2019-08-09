import 'package:flutter/material.dart';
void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
              Row(children: <Widget>[
                Container(
                  margin: EdgeInsets.all(5.0),
                  child:Column(children: <Widget>[
                    Text("Humidity",style:TextStyle(fontSize:20.0)),
                    SizedBox(height:12.0),
                    Text("69",style: TextStyle(fontSize:25.0)), //call value from json
                    SizedBox(height:10.0),
                    Text("%",style: TextStyle(fontSize:18.0)),
                  ],)
                ),
                Container(
                  margin: EdgeInsets.all(5.0),
                  child:Column(children: <Widget>[
                    Text("Precipitation",style:TextStyle(fontSize:20.0)),
                    SizedBox(height:12.0),
                    Text("5",style: TextStyle(fontSize:25.0)), //call value from json
                    SizedBox(height:10.0),
                    Text("%",style: TextStyle(fontSize:18.0)),
                  ],)
                ),
                Container(
                  margin: EdgeInsets.all(5.0),
                  child:Column(children: <Widget>[
                    Text("Wind",style:TextStyle(fontSize:20.0)),
                    SizedBox(height:12.0),
                    Text("14",style: TextStyle(fontSize:25.0)), //call value from json
                    SizedBox(height:10.0),
                    Text("km/h",style: TextStyle(fontSize:18.0)),
                  ],)
                ),
              ],)
            ],)
          ],
        )
        );
  }
}