import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart'as http;

class APIXUForecast{
  final String locationName;
  final String currentLastUpdated;
  final double currentTemp;
  final String currentCondition;
  final double windSpeed;
  final double pressure;
  final double humidity;
  final double visibility;
  final double uvIndex;

  final String sunset;
  final String sunrise;
  final String moonRise;
  final String moonSet;

  APIXUForecast(
    {@required this.locationName,
    @required this.currentLastUpdated,
    @required this.currentTemp,
    @required this.currentCondition,
    @required this.windSpeed,
    @required this.pressure,
    @required this.humidity,
    @required this.visibility,
    @required this.uvIndex,
    @required this.sunset,
    @required this.sunrise,
    @required this.moonRise,
    @required this.moonSet}
  );

  factory APIXUForecast.fromJson(Map<String, dynamic> json){
    try{
      var currents = json['current'];
      var condition = currents['condition'];//fetch the value condition under current
      return APIXUForecast(
        locationName: json['location']['name'],
        currentLastUpdated: currents['last_updated'],
        currentTemp: currents['temp_c'],
        currentCondition: condition['text']['icon'],//fetch the text and icon under condition
        windSpeed: json['wind_kph'],
        pressure: json['pressure_mb'],
        humidity: json['humidity'],
        visibility: json['vis_km'],
        uvIndex: json['uv'],
        sunset: json['astro']['sunset'],
        sunrise: json['astro']['sunrise'],
        moonRise: json['astro']['moonrise'],
        moonSet: json['astro']['moonset'],
      );
    }
    catch(g){
      return null;
    }
  }//end of the factory

}



class MyJSONWeather extends ChangeNotifier{
  //the API Key for the JSON //use it wisely
  static const APIKey = "6734e8dacaf5403eb24104347192407";
  APIXUForecast _forecast;
  get forecast => _forecast;

  MyJSONWeather(){
    fetch();//fetch intial data when the model created
  }

  APIXUForecast parseJsonForecast(String jsonString){
    var locate = jsonDecode(jsonString);
    return APIXUForecast.fromJson(locate);
  }

  fetch() async{
    http.Response response = await http.Client().get(
      'http://api.apixu.com/v1/forecast.json?key=$APIKey&q=Kuala+Lumpur');//get the Json value  
      //print the response body
      _forecast = parseJsonForecast(response.body);
      notifyListeners();

  }



}