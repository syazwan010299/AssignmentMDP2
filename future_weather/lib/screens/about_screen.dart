import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyAboutPage extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("STUDENTS' DETAILS")),
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("CAITLIN"),
              Text("B04180020")
            ],
          ),
          Row(
            children: <Widget>[
              Text("ATIQAH"),
              Text("B04180030")
            ],
          ),
          Row(
            children: <Widget>[
              Text("AIN"),
              Text("B04180045")
            ],
          ),
          Row(
            children: <Widget>[
              Text("ADLA"),
              Text("B04180020")
            ],
          ),
          Row(
            children: <Widget>[
              Text("BAD"),
              Text("B04180020")
            ],
          ),
        ],
      ),
    );

  


  }
}