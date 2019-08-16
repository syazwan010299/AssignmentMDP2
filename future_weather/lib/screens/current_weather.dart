import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import 'JSONWeather.dart';
import 'location_screen.dart';

class MyCurrentWeather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var apixu = Provider.of<MyJSONWeather>(context);
    var apixuNoListen = Provider.of<MyJSONWeather>(context, listen: false);
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(apixu.forecast.locationName),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.menu, color: Colors.white),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyLocationWeather()),
                );
              }),
        ],
      ),
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
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        //JSON ADDED HERE
                        '${apixu.forecast.currentTemp.toStringAsFixed(1)}°C',
                        style: TextStyle(
                          fontSize: 70,
                        ),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          //JSON ADDED HERE
                          apixu.forecast.currentConditionText,
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Image(
                        image: NetworkImage(
                            'http:' + apixu.forecast.currentConditionIcon),
                      ),
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
                    apixu.forecast.currentLastUpdated,
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
                            '${apixu.forecast.forecastDayMaxTempC}°',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            '${apixu.forecast.forecastDayMinTempC}°',
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
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: <Widget>[
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(apixu.forecast.forecastDate2,
                                    style: TextStyle(color: Colors.black)),
                                Image(
                                  image: NetworkImage('http:' +
                                      apixu.forecast.forecastDay2ConditionIcon),
                                ),
                                Text('${apixu.forecast.forecastDay2MaxTempC}° / ' +
                                    '${apixu.forecast.forecastDay2MinTempC}°'),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(apixu.forecast.forecastDate3,
                                    style: TextStyle(color: Colors.black)),
                                Image(
                                  image: NetworkImage('http:' +
                                      apixu.forecast.forecastDay3ConditionIcon),
                                ),
                                Text('${apixu.forecast.forecastDay3MaxTempC}° / ' +
                                    '${apixu.forecast.forecastDay3MinTempC}°'),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(apixu.forecast.forecastDate4,
                                    style: TextStyle(color: Colors.black)),
                                Image(
                                  image: NetworkImage('http:' +
                                      apixu.forecast.forecastDay4ConditionIcon),
                                ),
                                Text('${apixu.forecast.forecastDay4MaxTempC}° / ' +
                                    '${apixu.forecast.forecastDay4MinTempC}°'),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(apixu.forecast.forecastDate5,
                                    style: TextStyle(color: Colors.black)),
                                Image(
                                  image: NetworkImage('http:' +
                                      apixu.forecast.forecastDay5ConditionIcon),
                                ),
                                Text('${apixu.forecast.forecastDay5MaxTempC}° / ' +
                                    '${apixu.forecast.forecastDay5MinTempC}°'),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(apixu.forecast.forecastDate6,
                                    style: TextStyle(color: Colors.black)),
                                Image(
                                  image: NetworkImage('http:' +
                                      apixu.forecast.forecastDay6ConditionIcon),
                                ),
                                Text('${apixu.forecast.forecastDay6MaxTempC}° / ' +
                                    '${apixu.forecast.forecastDay6MinTempC}°'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
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
                    'Sunrise: ' + apixu.forecast.forecastAstroSunrise,
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    'Moonrise: ' + apixu.forecast.forecastAstroMoonRise,
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
                    'Sunset: ' + apixu.forecast.forecastAstroSunset,
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    'Moonset: ' + apixu.forecast.forecastAstroMoonSet,
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
                      Text('${apixu.forecast.feelLikeC.toStringAsFixed(1)}°C'),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(FontAwesomeIcons.tint, color:Colors.black54),
                      Text('Humidity:'),
                      Text('${apixu.forecast.humidity.toStringAsFixed(1)}'),
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
                      Text('${apixu.forecast.visibility.toStringAsFixed(1)}'),
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
                        Text(
                            '${apixu.forecast.windSpeed.toStringAsFixed(1)}km/h'),
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
                        Text('${apixu.forecast.uvIndex.toStringAsFixed(1)}'),
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
                        Text(
                            '${((apixu.forecast.pressure) * 100).toStringAsFixed(1)} Pa'),
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
        onPressed: () {
          apixuNoListen.fetch();
        },
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
