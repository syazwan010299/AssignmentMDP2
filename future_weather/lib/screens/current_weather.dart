import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCurrentWeather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        
            //background images, will comeback for fine-tuning
            // Container(
            //   decoration: BoxDecoration(
            //     image: DecorationImage(
            //       image: AssetImage(null),
            //       fit: BoxFit.fill,
            //     ),
            //   ),
            // ),

            //Current temp container
            Expanded(
              flex: 3,
              child: Container(
                alignment: Alignment.center,
                child: Column(
                  children: <Widget>[
                    Padding(
                      //TEMPERATURE AND WEATHER CONDITION
                      padding: EdgeInsets.all(5.0),
                      child: Column(
                        children: <Widget>[
                          Text(
                            //JSON ADDED HERE
                            '29°',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            //JSON ADDED HERE
                            'Mostly Cloudy',
                            style: TextStyle(fontSize: 8),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //sunrise/sunset/moonrise/moonset
            Expanded(
              flex: 2,
              child: Row(
                children: <Widget>[
                  Padding(
                    //first row: Sunset Sunrise
                    padding: EdgeInsets.all(5.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Sunrise: '),
                            Text('07:30 AM'), //JSON ADD HERE
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Sunset: '),
                            Text('07:30 PM'), //JSON ADD HERE
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    //Second row: Moonrise Moonset
                    padding: EdgeInsets.all(5.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Moonrise: '),
                            Text('12:30 PM'), //JSON ADD HERE
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Moonset: '),
                            Text('03:30 AM'), //JSON ADD HERE
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //ICONS: HUMIDITY ETC
            Expanded(
              flex: 2,
              child: Row(
                children: <Widget>[
                  Row(
                    //ROW #1
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                  margin: EdgeInsets.all(5.0),
                                  child: Column(
                                    children: <Widget>[
                                      Text("Humidity",
                                          style: TextStyle(fontSize: 20.0)),
                                      SizedBox(height: 12.0),
                                      Text("69",
                                          style: TextStyle(
                                              fontSize:
                                                  25.0)), //call value from json
                                      SizedBox(height: 10.0),
                                      Text("%",
                                          style: TextStyle(fontSize: 18.0)),
                                    ],
                                  )),
                              Container(
                                  margin: EdgeInsets.all(5.0),
                                  child: Column(
                                    children: <Widget>[
                                      Text("Precipitation",
                                          style: TextStyle(fontSize: 20.0)),
                                      SizedBox(height: 12.0),
                                      Text("5",
                                          style: TextStyle(
                                              fontSize:
                                                  25.0)), //call value from json
                                      SizedBox(height: 10.0),
                                      Text("%",
                                          style: TextStyle(fontSize: 18.0)),
                                    ],
                                  )),
                              Container(
                                  margin: EdgeInsets.all(5.0),
                                  child: Column(
                                    children: <Widget>[
                                      Text("Wind",
                                          style: TextStyle(fontSize: 20.0)),
                                      SizedBox(height: 12.0),
                                      Text("14",
                                          style: TextStyle(
                                              fontSize:
                                                  25.0)), //call value from json
                                      SizedBox(height: 10.0),
                                      Text("km/h",
                                          style: TextStyle(fontSize: 18.0)),
                                    ],
                                  )),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),

            Expanded(
              //ROW #2
              flex: 2,
              child: Row(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                  margin: EdgeInsets.all(5.0),
                                  child: Column(
                                    children: <Widget>[
                                      Text("Humidity",
                                          style: TextStyle(fontSize: 16.0)),
                                      SizedBox(height: 12.0),
                                      Text("69",
                                          style: TextStyle(
                                              fontSize:
                                                  25.0)), //call value from json
                                      SizedBox(height: 10.0),
                                      Text("%",
                                          style: TextStyle(fontSize: 18.0)),
                                    ],
                                  )),
                              Container(
                                  margin: EdgeInsets.all(5.0),
                                  child: Column(
                                    children: <Widget>[
                                      Text("Precipitation",
                                          style: TextStyle(fontSize: 20.0)),
                                      SizedBox(height: 12.0),
                                      Text("5",
                                          style: TextStyle(
                                              fontSize:
                                                  25.0)), //call value from json
                                      SizedBox(height: 10.0),
                                      Text("%",
                                          style: TextStyle(fontSize: 18.0)),
                                    ],
                                  )),
                              Container(
                                  margin: EdgeInsets.all(5.0),
                                  child: Column(
                                    children: <Widget>[
                                      Text("Wind",
                                          style: TextStyle(fontSize: 20.0)),
                                      SizedBox(height: 12.0),
                                      Text("14",
                                          style: TextStyle(
                                              fontSize:
                                                  25.0)), //call value from json
                                      SizedBox(height: 10.0),
                                      Text("km/h",
                                          style: TextStyle(fontSize: 18.0)),
                                    ],
                                  )),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),

            //RAISED BUTTONS
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    child: Text('REFRESH'),
                    onPressed: () {}, //CALL AGAIN
                  ),
                  RaisedButton(
                    child: Text('FORECAST'),
                    onPressed: () {}, //CALL AGAIN
                  ),
                ],
              ),
            ),
          ],
        );

  }
}
