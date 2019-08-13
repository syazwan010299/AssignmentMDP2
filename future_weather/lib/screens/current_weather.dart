import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:future_weather/screens/forecast_layout.dart';

class MyCurrentWeather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _buildCurrentTemp(),
          _buildCurrentTime(),
          Divider(),
          _buildRiseTime(),
          Divider(),
          _buildSetTime(),
          Divider(),
          _buildFirstIconRow(),
          _buildSecondIconRow()
        ],
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.blueAccent[700],
                  textColor: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.refresh),
                      Text('Refresh'),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: RaisedButton(
                  color: Colors.blueAccent[700],
                  textColor: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.show_chart),
                      Text('Forecast'),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyForecastWeather()),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget _buildCurrentTemp() {
  return Container(
    child: SizedBox(
      height: 200.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            //JSON ADDED HERE
            '29°',
            style: TextStyle(
              fontSize: 75,
            ),
          ),
          Text(
            //JSON ADDED HERE
            'Mostly Cloudy',
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
    ),
  );
}

Widget _buildCurrentTime() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Padding(
        padding: EdgeInsets.all(5.0),
        child: Text('2019-08-09 11:57'), //JSON LOCAL TIME
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text('34°'),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text('29°'),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}

Widget _buildRiseTime() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Padding(
        padding: EdgeInsets.all(5.0),
        child: Text('Sunrise: 07:30 AM'),
      ),
      Padding(
        padding: EdgeInsets.all(5.0),
        child: Text('Moonrise: 02:50 PM'),
      ),
    ],
  );
}

Widget _buildSetTime() {
  //OPTIONAL
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Padding(
        padding: EdgeInsets.all(5.0),
        child: Text('Sunset: 07:30 PM'),
      ),
      Padding(
        padding: EdgeInsets.all(5.0),
        child: Text('Moonset: 01:50 AM'),
      ),
    ],
  );
}

Widget _buildFirstIconRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: <Widget>[
      Container(
        margin: EdgeInsets.all(5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Feels like: '),
            Icon(FontAwesomeIcons.thermometerThreeQuarters),
            Text('36'),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.all(5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Humidity: '),
            Icon(FontAwesomeIcons.tint),
            Text('69%'),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.all(5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Visibility: '),
            Icon(FontAwesomeIcons.eye),
            Text('8.0km'),
          ],
        ),
      ),
    ],
  );
}

Widget _buildSecondIconRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: <Widget>[
      Container(
        margin: EdgeInsets.all(5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Wind: '),
            Icon(FontAwesomeIcons.wind),
            Text('36km/h'),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.all(5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('UV: '),
            Icon(Icons.wb_sunny),
            Text('8.3'),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.all(5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Pressure: '),
            Icon(FontAwesomeIcons.tachometerAlt),
            Text('1010.0mb'),
          ],
        ),
      ),
    ],
  );
}
