import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Temperature extends State<StatefulWidget>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image.asset("images/weather_bg.jpg",fit: BoxFit.fitHeight,),
          new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 40.0),
                child: new Text(
                                     "Kuala Lumpur", 
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
              ),
              new Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 100.0),
                child: new Column(
                  children: <Widget>[
                    new Text(
                        "20 °",
                        style: new TextStyle(
                            color: Colors.white,
                            fontSize: 80.0
                        )),
                    new Text(
                                                 " ",
                        style: new TextStyle(
                            color: Colors.white,
                            fontSize: 45.0
                        )),
                    new Text(
                                             "Humidity 80%",
                      style: new TextStyle(
                          color: Colors.white,
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