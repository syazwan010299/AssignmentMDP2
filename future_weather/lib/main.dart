import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

import 'package:future_weather/screen/JSONWeather.dart';

void main() => runApp(
  MultiProvider(
        providers: [
          ChangeNotifierProvider(builder: (context) => MyJSONWeather()),
        ],
         child :MyApp(),
        ),
 );

 class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyFirstPage(),
    );
  }

 }


class MyFirstPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Widget current;
    Widget forecast;

    var apixu = Provider.of<MyJSONWeather>(context);
    var apixuNoListen = Provider.of<MyJSONWeather>(context, listen: false);

    if (apixu.forecast == null){
      current = Text("No Place identified");
    }else{
      current = Column(
        children: <Widget>[
          Text('Location : ' + apixu.forecast.locationName),
          Text('Current Last Updated : ' + apixu.forecast.currentLastUpdated),
          Text('Current Temperature : ${apixu.forecast.currentTemp.toStringAsFixed(1)} c'),
          Text('Current Condition : ' + apixu.forecast.currentCondition),
          Text('Wind Speed : ${apixu.forecast.windSpeed.toStringAsFixed(1)}'),
          Text('Pressure : ${apixu.forecast.pressure.toStringAsFixed(1)}'),
          Text('Humidity : ${apixu.forecast.humidity.toStringAsFixed(1)}'),
          Text('Visibility : ${apixu.forecast.visibility.toStringAsFixed(1)}'),
          Text('UV Index : ${apixu.forecast.uvIndex.toStringAsFixed(1)}'),
          Text('Sunset : ' + apixu.forecast.sunset),
          Text('Sunrise : ' + apixu.forecast.sunrise),
          Text('Moonset : ' + apixu.forecast.moonSet),
          Text('Moonrise : ' + apixu.forecast.moonRise),
        ],
      );
    }

     return Scaffold(
      appBar: AppBar(
        title: Text("Weather"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            current,
            RaisedButton(
              child: Text('Refresh'),
              onPressed: () {
                apixuNoListen.fetch();
              },
            )
          ],
        ),
      ),
    );
  }
}
    /*
    return Scaffold
    (
      appBar:AppBar
      (
        title: Text("Future Weather"),
      ),
      body: Container
      (
        child : ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Expanded
          (
            flex: 4,
            child : Container(
            child: Placeholder(),
            ),
          ),
          Expanded
          (
            flex: 4,
            child: Container(
            child : Placeholder(),
            ),
          ),
          Expanded
          (
            flex: 2,
            child : Container(
            child : Placeholder(),
            ),
          ),
        ],
      ),
      ),
    );
  }

}
*/

