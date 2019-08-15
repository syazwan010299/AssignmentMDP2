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

  //Forecast 1st Day
  final String forecastDate;
  final double forecastDayMaxTempC;
  final double forecastDayMinTempC;
  final double forecastDayAvgTempC;
  final double forecastDayMaxWindKph;
  final double forecastDayTotalPrecipitationMM;
  final double forecastDayAvgVisKm;
  final double forecastDayAvgHum;
  final String forecastDayConditionText;
  final String forecastDayConditionIcon;
  final double forecastDayUV;
  final String forecastAstroSunrise;
  final String forecastAstroSunset;
  final String forecastAstroMoonRise;
  final String forecastAstroMoonSet;

  //Forecast 2nd Day
  final String forecastDate2;
  final double forecastDay2MaxTempC;
  final double forecastDay2MinTempC;
  final double forecastDay2AvgTempC;
  final double forecastDay2MaxWindKph;
  final double forecastDay2TotalPrecipitationMM;
  final double forecastDay2AvgVisKm;
  final double forecastDay2AvgHum;
  final String forecastDay2ConditionText;
  final String forecastDay2ConditionIcon;
  final double forecastDay2UV;
  final String forecastAstro2Sunrise;
  final String forecastAstro2Sunset;
  final String forecastAstro2MoonRise;
  final String forecastAstro2MoonSet;

 //Forecast 3rd Day
  final String forecastDate3;
  final double forecastDay3MaxTempC;
  final double forecastDay3MinTempC;
  final double forecastDay3AvgTempC;
  final double forecastDay3MaxWindKph;
  final double forecastDay3TotalPrecipitationMM;
  final double forecastDay3AvgVisKm;
  final double forecastDay3AvgHum;
  final String forecastDay3ConditionText;
  final String forecastDay3ConditionIcon;
  final double forecastDay3UV;
  final String forecastAstro3Sunrise;
  final String forecastAstro3Sunset;
  final String forecastAstro3MoonRise;
  final String forecastAstro3MoonSet;

  //Forecast 4rd Day
  final String forecastDate4;
  final double forecastDay4MaxTempC;
  final double forecastDay4MinTempC;
  final double forecastDay4AvgTempC;
  final double forecastDay4MaxWindKph;
  final double forecastDay4TotalPrecipitationMM;
  final double forecastDay4AvgVisKm;
  final double forecastDay4AvgHum;
  final String forecastDay4ConditionText;
  final String forecastDay4ConditionIcon;
  final double forecastDay4UV;
  final String forecastAstro4Sunrise;
  final String forecastAstro4Sunset;
  final String forecastAstro4MoonRise;
  final String forecastAstro4MoonSet;

  //Forecast 5th Day
  final String forecastDate5;
  final double forecastDay5MaxTempC;
  final double forecastDay5MinTempC;
  final double forecastDay5AvgTempC;
  final double forecastDay5MaxWindKph;
  final double forecastDay5TotalPrecipitationMM;
  final double forecastDay5AvgVisKm;
  final double forecastDay5AvgHum;
  final String forecastDay5ConditionText;
  final String forecastDay5ConditionIcon;
  final double forecastDay5UV;
  final String forecastAstro5Sunrise;
  final String forecastAstro5Sunset;
  final String forecastAstro5MoonRise;
  final String forecastAstro5MoonSet;

  //Forecast 6th Day
  final String forecastDate6;
  final double forecastDay6MaxTempC;
  final double forecastDay6MinTempC;
  final double forecastDay6AvgTempC;
  final double forecastDay6MaxWindKph;
  final double forecastDay6TotalPrecipitationMM;
  final double forecastDay6AvgVisKm;
  final double forecastDay6AvgHum;
  final String forecastDay6ConditionText;
  final String forecastDay6ConditionIcon;
  final double forecastDay6UV;
  final String forecastAstro6Sunrise;
  final String forecastAstro6Sunset;
  final String forecastAstro6MoonRise;
  final String forecastAstro6MoonSet;

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

    //required for the 1st day
    @required this.forecastDate,
    @required this.forecastDayMaxTempC,
  @required this.forecastDayMinTempC,
  @required this.forecastDayAvgTempC,
  @required this.forecastDayMaxWindKph,
  @required this.forecastDayTotalPrecipitationMM,
  @required this.forecastDayAvgVisKm,
  @required this.forecastDayAvgHum,
  @required this.forecastDayConditionText,
  @required this.forecastDayConditionIcon,
  @required this.forecastDayUV,
  @required this.forecastAstroSunrise,
  @required this.forecastAstroSunset,
  @required this.forecastAstroMoonRise,
  @required this.forecastAstroMoonSet,
    
  //Forecast 2nd Day
  @required this.forecastDate2,
  @required this.forecastDay2MaxTempC,
  @required this.forecastDay2MinTempC,
  @required this.forecastDay2AvgTempC,
  @required this.forecastDay2MaxWindKph,
  @required this.forecastDay2TotalPrecipitationMM,
  @required this.forecastDay2AvgVisKm,
  @required this.forecastDay2AvgHum,
  @required this.forecastDay2ConditionText,
  @required this.forecastDay2ConditionIcon,
  @required this.forecastDay2UV,
  @required this.forecastAstro2Sunrise,
  @required this.forecastAstro2Sunset,
  @required this.forecastAstro2MoonRise,
  @required this.forecastAstro2MoonSet,

  //Forecast 3rd Day
  @required this.forecastDate3,
  @required this.forecastDay3MaxTempC,
  @required this.forecastDay3MinTempC,
  @required this.forecastDay3AvgTempC,
  @required this.forecastDay3MaxWindKph,
  @required this.forecastDay3TotalPrecipitationMM,
  @required this.forecastDay3AvgVisKm,
  @required this.forecastDay3AvgHum,
  @required this.forecastDay3ConditionText,
  @required this.forecastDay3ConditionIcon,
  @required this.forecastDay3UV,
  @required this.forecastAstro3Sunrise,
  @required this.forecastAstro3Sunset,
  @required this.forecastAstro3MoonRise,
  @required this.forecastAstro3MoonSet,

  //Forecast 4rd Day
  @required this.forecastDate4,
  @required this.forecastDay4MaxTempC,
  @required this.forecastDay4MinTempC,
  @required this.forecastDay4AvgTempC,
  @required this.forecastDay4MaxWindKph,
  @required this.forecastDay4TotalPrecipitationMM,
  @required this.forecastDay4AvgVisKm,
  @required this.forecastDay4AvgHum,
  @required this.forecastDay4ConditionText,
  @required this.forecastDay4ConditionIcon,
  @required this.forecastDay4UV,
  @required this.forecastAstro4Sunrise,
  @required this.forecastAstro4Sunset,
  @required this.forecastAstro4MoonRise,
  @required this.forecastAstro4MoonSet,

  //Forecast 5th Day
  @required this.forecastDate5,
  @required this.forecastDay5MaxTempC,
  @required this.forecastDay5MinTempC,
  @required this.forecastDay5AvgTempC,
  @required this.forecastDay5MaxWindKph,
  @required this.forecastDay5TotalPrecipitationMM,
  @required this.forecastDay5AvgVisKm,
  @required this.forecastDay5AvgHum,
  @required this.forecastDay5ConditionText,
  @required this.forecastDay5ConditionIcon,
  @required this.forecastDay5UV,
  @required this.forecastAstro5Sunrise,
  @required this.forecastAstro5Sunset,
  @required this.forecastAstro5MoonRise,
  @required this.forecastAstro5MoonSet,

  //Forecast 6th Day
  @required this.forecastDate6,
  @required this.forecastDay6MaxTempC,
  @required this.forecastDay6MinTempC,
  @required this.forecastDay6AvgTempC,
  @required this.forecastDay6MaxWindKph,
  @required this.forecastDay6TotalPrecipitationMM,
  @required this.forecastDay6AvgVisKm,
  @required this.forecastDay6AvgHum,
  @required this.forecastDay6ConditionText,
  @required this.forecastDay6ConditionIcon,
  @required this.forecastDay6UV,
  @required this.forecastAstro6Sunrise,
  @required this.forecastAstro6Sunset,
  @required this.forecastAstro6MoonRise,
  @required this.forecastAstro6MoonSet,

    }
  );

  factory APIXUForecast.fromJson(Map<String, dynamic> json){
    try{
      var currents = json['current'];
      var forecast = json['forecast']['forecastday'];
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

        //Forecast Current Day
        forecastDate: forecast[0]['date'],
        forecastDayMaxTempC: forecast[0]['day']['maxtemp_c'],
        forecastDayMinTempC: forecast[0]['day']['mintemp_c'],
        forecastDayAvgTempC: forecast[0]['day']['avgtemp_c'],
        forecastDayMaxWindKph: forecast[0]['day']['maxwind_kph'],
        forecastDayTotalPrecipitationMM: forecast[0]['day']['totalprecip_mm'],
        forecastDayAvgVisKm: forecast[0]['day']['avgvis_km'],
        forecastDayAvgHum: forecast[0]['day']['avghumidity'],
        forecastDayConditionText: forecast[0]['day']['condition']['text'],
        forecastDayConditionIcon: forecast[0]['day']['condition']['icon'],
        forecastDayUV: forecast[0]['day']['uv'],
        forecastAstroSunrise: forecast[0]['astro']['sunrise'],
        forecastAstroSunset: forecast[0]['astro']['sunset'],
        forecastAstroMoonRise: forecast[0]['astro']['moonrise'],
        forecastAstroMoonSet: forecast[0]['astro']['moonset'],

        //Forecast 2nd Day
        forecastDate2: forecast[1]['date'],
        forecastDay2MaxTempC: forecast[1]['day']['maxtemp_c'],
        forecastDay2MinTempC: forecast[1]['day']['mintemp_c'],
        forecastDay2AvgTempC: forecast[1]['day']['avgtemp_c'],
        forecastDay2MaxWindKph: forecast[1]['day']['maxwind_kph'],
        forecastDay2TotalPrecipitationMM: forecast[1]['day']['totalprecip_mm'],
        forecastDay2AvgVisKm: forecast[1]['day']['avgvis_km'],
        forecastDay2AvgHum: forecast[1]['day']['avghumidity'],
        forecastDay2ConditionText: forecast[1]['day']['condition']['text'],
        forecastDay2ConditionIcon: forecast[1]['day']['condition']['icon'],
        forecastDay2UV: forecast[1]['day']['uv'],
        forecastAstro2Sunrise: forecast[1]['astro']['sunrise'],
        forecastAstro2Sunset: forecast[1]['astro']['sunset'],
        forecastAstro2MoonRise: forecast[1]['astro']['moonrise'],
        forecastAstro2MoonSet: forecast[1]['astro']['moonset'],

        //Forecast 3rd Day
        forecastDate3: forecast[2]['date'],
        forecastDay3MaxTempC: forecast[2]['day']['maxtemp_c'],
        forecastDay3MinTempC: forecast[2]['day']['mintemp_c'],
        forecastDay3AvgTempC: forecast[2]['day']['avgtemp_c'],
        forecastDay3MaxWindKph: forecast[2]['day']['maxwind_kph'],
        forecastDay3TotalPrecipitationMM: forecast[2]['day']['totalprecip_mm'],
        forecastDay3AvgVisKm: forecast[2]['day']['avgvis_km'],
        forecastDay3AvgHum: forecast[2]['day']['avghumidity'],
        forecastDay3ConditionText: forecast[2]['day']['condition']['text'],
        forecastDay3ConditionIcon: forecast[2]['day']['condition']['icon'],
        forecastDay3UV: forecast[2]['day']['uv'],
        forecastAstro3Sunrise: forecast[2]['astro']['sunrise'],
        forecastAstro3Sunset: forecast[2]['astro']['sunset'],
        forecastAstro3MoonRise: forecast[2]['astro']['moonrise'],
        forecastAstro3MoonSet: forecast[2]['astro']['moonset'],

        //Forecast 4rd Day
        forecastDate4: forecast[3]['date'],
        forecastDay4MaxTempC: forecast[3]['day']['maxtemp_c'],
        forecastDay4MinTempC: forecast[3]['day']['mintemp_c'],
        forecastDay4AvgTempC: forecast[3]['day']['avgtemp_c'],
        forecastDay4MaxWindKph: forecast[3]['day']['maxwind_kph'],
        forecastDay4TotalPrecipitationMM: forecast[3]['day']['totalprecip_mm'],
        forecastDay4AvgVisKm: forecast[3]['day']['avgvis_km'],
        forecastDay4AvgHum: forecast[3]['day']['avghumidity'],
        forecastDay4ConditionText: forecast[3]['day']['condition']['text'],
        forecastDay4ConditionIcon: forecast[3]['day']['condition']['icon'],
        forecastDay4UV: forecast[3]['day']['uv'],
        forecastAstro4Sunrise: forecast[3]['astro']['sunrise'],
        forecastAstro4Sunset: forecast[3]['astro']['sunset'],
        forecastAstro4MoonRise: forecast[3]['astro']['moonrise'],
        forecastAstro4MoonSet: forecast[3]['astro']['moonset'],

        //Forecast 5th Day
        forecastDate5: forecast[4]['date'],
        forecastDay5MaxTempC: forecast[4]['day']['maxtemp_c'],
        forecastDay5MinTempC: forecast[4]['day']['mintemp_c'],
        forecastDay5AvgTempC: forecast[4]['day']['avgtemp_c'],
        forecastDay5MaxWindKph: forecast[4]['day']['maxwind_kph'],
        forecastDay5TotalPrecipitationMM: forecast[4]['day']['totalprecip_mm'],
        forecastDay5AvgVisKm: forecast[4]['day']['avgvis_km'],
        forecastDay5AvgHum: forecast[4]['day']['avghumidity'],
        forecastDay5ConditionText: forecast[4]['day']['condition']['text'],
        forecastDay5ConditionIcon: forecast[4]['day']['condition']['icon'],
        forecastDay5UV: forecast[4]['day']['uv'],
        forecastAstro5Sunrise: forecast[4]['astro']['sunrise'],
        forecastAstro5Sunset: forecast[4]['astro']['sunset'],
        forecastAstro5MoonRise: forecast[4]['astro']['moonrise'],
        forecastAstro5MoonSet: forecast[4]['astro']['moonset'],

        //Forecast 6th Day
        forecastDate6: forecast[5]['date'],
        forecastDay6MaxTempC: forecast[5]['day']['maxtemp_c'],
        forecastDay6MinTempC: forecast[5]['day']['mintemp_c'],
        forecastDay6AvgTempC: forecast[5]['day']['avgtemp_c'],
        forecastDay6MaxWindKph: forecast[5]['day']['maxwind_kph'],
        forecastDay6TotalPrecipitationMM: forecast[5]['day']['totalprecip_mm'],
        forecastDay6AvgVisKm: forecast[5]['day']['avgvis_km'],
        forecastDay6AvgHum: forecast[5]['day']['avghumidity'],
        forecastDay6ConditionText: forecast[5]['day']['condition']['text'],
        forecastDay6ConditionIcon: forecast[5]['day']['condition']['icon'],
        forecastDay6UV: forecast[5]['day']['uv'],
        forecastAstro6Sunrise: forecast[5]['astro']['sunrise'],
        forecastAstro6Sunset: forecast[5]['astro']['sunset'],
        forecastAstro6MoonRise: forecast[5]['astro']['moonrise'],
        forecastAstro6MoonSet: forecast[5]['astro']['moonset'],

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
      'http://api.apixu.com/v1/forecast.json?key=$APIKey&q=Kuala+Lumpur&days=6');//get the Json value  
      //print the response body
      _forecast = parseJsonForecast(response.body);
      notifyListeners();

  }
}