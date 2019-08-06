import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemBuilder: (context, position) {
        return MyFirstPage();
       },
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
      body: Column
      (
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded
          (
            flex: 4, 
            child: null,
          ),
          Expanded
          (
            flex: 4,
            child:null,
          ),
          Expanded
          (
            flex: 2,
            child:null,
          ),
        ],
      ),
    );
  }

}

