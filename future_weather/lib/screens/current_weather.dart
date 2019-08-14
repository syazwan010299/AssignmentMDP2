import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import 'JSONWeather.dart';

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
          _buildForecast(),
          Divider(),
          _buildRiseTime(),
          Divider(),
          _buildSetTime(),
          Divider(),
          _buildFirstIconRow(),
          Divider(),
          _buildSecondIconRow()
        ],
      ),
      bottomNavigationBar: MaterialButton(
        color: Colors.blue[400],
        onPressed: () {},
        child: SizedBox(
          width: double.infinity,
          height: 50.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.refresh,
                color: Colors.white,
              ),
              Text(
                'Refresh',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildCurrentTemp() {
  return Container(
    child: SizedBox(
      height: 300.0,
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

Widget _buildForecast() {
  return Padding(
    padding: EdgeInsets.all(8.0),
    child: Container(
      height: 150.0,
      child: ListView.builder(
        itemCount: 7,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('DD-MM-YYYY', style: TextStyle(color: Colors.black)),
                Icon(Icons.cloud, color: Colors.grey),
                Text('Max Temp: 32'),
                Text('Min Temp: 26'),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
