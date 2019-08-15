import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import 'JSONWeather.dart';

class MyCurrentWeather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[400],
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.3, 0.4],
            colors: [
              Colors.blue[300],
              Colors.lightBlue[100],
            ],
          ),
        ),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
              child: SizedBox(
                height: 275.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 25.0),
                      child: Text(
                        //JSON ADDED HERE
                        '29°',
                        style: TextStyle(
                          fontSize: 100,
                        ),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                      //JSON ADDED HERE
                      'Mostly Cloudy',
                      style: TextStyle(fontSize: 15),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Icon(Icons.cloud),
                    ),
                    
                      ],
                    ),
                    
                  ],
                ),
              ),
            ),

            //CURRENT DATE AND MAX/MIN TEMPS
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    '2019-08-09 11:57',
                    style: TextStyle(fontSize: 16),
                  ), //JSON LOCAL TIME
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            '34°',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            '29°',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Divider(),

            //FORECAST LIST
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                height: 150.0,
                child: ListView.builder(
                  itemCount: 6,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('DD-MM-YYYY',
                              style: TextStyle(color: Colors.black)),
                          Icon(Icons.cloud, color: Colors.grey),
                          Text('Max Temp: 32'),
                          Text('Min Temp: 26'),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Divider(),

            //SUNRISE/MOONRISE
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    'Sunrise: 07:30 AM',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    'Moonrise: 02:50 PM',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
            Divider(),

            //SUNSET/MOONSET
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    'Sunset:  07:30 PM',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    'Moonset: 01:50 AM',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
            Divider(),

            //FIRST ROW ICON MEASUREMENTS
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(FontAwesomeIcons.thermometerThreeQuarters),
                      Text('Feels like:'),
                      Text('36'),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(FontAwesomeIcons.tint),
                      Text('Humidity:'),
                      Text('69%'),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(FontAwesomeIcons.eye),
                      Text('Visibility:'),
                      Text('8.0km'),
                    ],
                  ),
                ),
              ],
            ),
            Divider(),

            //SECOND ROW ICON MEASUREMENTS
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(FontAwesomeIcons.wind),
                        Text('Wind:'),
                        Text('36km/h'),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.wb_sunny),
                        Text('UV:'),
                        Text('8.3'),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(FontAwesomeIcons.tachometerAlt),
                        Text('Pressure:'),
                        Text('1010.0mb'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      //CONSTRUCT REFRESH BUTTON
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

// Widget _buildForecast() {
//   return Padding(
//     padding: EdgeInsets.all(8.0),
//     child: Container(
//       height: 150.0,
//       child: ListView.builder(
//         itemCount: 7,
//         scrollDirection: Axis.horizontal,
//         itemBuilder: (context, index) => Card(
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Text('DD-MM-YYYY', style: TextStyle(color: Colors.black)),
//                 Icon(Icons.cloud, color: Colors.grey),
//                 Text('Max Temp: 32'),
//                 Text('Min Temp: 26'),
//               ],
//             ),
//           ),
//         ),
//       ),
//     ),
//   );
// }
