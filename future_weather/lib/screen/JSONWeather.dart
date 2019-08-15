import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart'as http;

class APIXUForecast{
  final String locationName;
  final String currentLastUpdated;
  final double currentTemp;
  final String currentConditionIcon;
  final String currentConditionText;
  final double windSpeed;
  final double pressure;
  final int humidity;
  final double feelLikeC;
  final double visibility;
  final double uvIndex;

  //final String sunset;
  // final String sunrise;
  // final String moonRise;
  // final String moonSet;

  APIXUForecast(
    {@required this.locationName,
    @required this.currentLastUpdated,
    @required this.currentTemp,
    @required this.currentConditionIcon,
    @required this.currentConditionText,
    @required this.windSpeed,
    @required this.pressure,
    @required this.humidity,
    @required this.feelLikeC,
    @required this.visibility,
    @required this.uvIndex,
    //@required this.sunset,
    // @required this.sunrise,
    // @required this.moonRise,
    // @required this.moonSet
    }
  );

  factory APIXUForecast.fromJson(Map<String, dynamic> json){
    try{
      var currents = json['current'];
      var date = json['forecast']['forecastday']['date']['2019-08--14'];
      var condition = currents['condition'];//fetch the value condition under current
      return APIXUForecast(
        locationName: json['location']['name'],
        currentLastUpdated:currents['last_updated'],
        currentTemp: currents['temp_c'],
        currentConditionIcon: currents['condition']['icon'],
        currentConditionText: currents['condition']['text'],//fetch the text and icon under condition
        windSpeed:currents['wind_kph'],
        pressure: currents['pressure_mb'],
        humidity: currents['humidity'],
        feelLikeC: currents['feelslike_c'],
        visibility: currents['vis_km'],
        uvIndex: currents['uv'],
        //sunset: date['astro']['sunset'],
        // sunrise: json['forecast']['forecastday']['astro']['sunrise'],
        // moonRise: json['forecast']['forecastday']['astro']['moonrise'],
        // moonSet: json['forecast ']['forecastday']['astro']['moonset'],
      );
    }
    catch(e){
      return null;//return null if JSON String is invalid
    }
  }//end of the factory

}



class MyJSONWeather extends ChangeNotifier{
  //the API Key for the JSON //use it wisely
  static const APIKey = "404d704a8c634a97a0b105010192407";
  APIXUForecast _forecast;
  get forecast => _forecast;

  MyJSONWeather(){
    fetch();//fetch intial data when the model created
  }

  APIXUForecast parseJsonForecast(String jsonString){
    var map = jsonDecode(jsonString);
    return APIXUForecast.fromJson(map);
  }

  fetch() async{
    http.Response response = await http.Client().get(
      'http://api.apixu.com/v1/forecast.json?key=$APIKey&q=Selangor&days=1');//get the Json value  
      //print the response body
      _forecast = parseJsonForecast(response.body);
      notifyListeners();

  }
}