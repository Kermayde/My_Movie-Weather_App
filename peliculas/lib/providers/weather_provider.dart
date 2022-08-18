import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

//import '../screens/weather_screen.dart';

//http://api.weatherapi.com/v1/forecast.json?key=a1fc9e6c652b4edfaab143006222507&q=Durango&days=5&aqi=no&alerts=no
class WeatherProvider extends ChangeNotifier {

  String _key = "a1fc9e6c652b4edfaab143006222507";
  String _baseURL = "api.weatherapi.com";
  String _q = "Durango";
  String _days = "5";
  String _aqi = "no";
  String _alerts = "no";

  String todayWeather = '';
  String todayTemp = '';
  String todayDay = '';
  String todayText = '';

  String foretemp0 = "";
  String foreicon0 = "";
  String foredate0 = "";
  String foretext0 = "";

  String foretemp1 = "";
  String foreicon1 = "";
  String foredate1 = "";
  String foretext1 = "";

  String foretemp2 = "";
  String foreicon2 = "";
  String foredate2 = "";
  String foretext2 = "";
  

  WeatherProvider() {
    print("WeatherProvider init");

    this.getOnDisplayWeather();
  }

  getOnDisplayWeather() async {
    var url =
      Uri.https(this._baseURL, 'v1/forecast.json', {
        "key": _key,
        "q": _q,
        "days": _days,
        "aqi": _aqi,
        "alerts": _alerts
      });

  // Await the http get response, then decode the json-formatted response.
  final response = await http.get(url);
  final Map<String, dynamic> apiDecoded = json.decode(response.body);
  
  //Current Day
  final image1 = apiDecoded["current"]["condition"]["icon"];
  final todayImageLink = "http:" + image1;
  final currentC = apiDecoded["current"]["temp_c"];
  final day = apiDecoded["current"]["last_updated"];
  final text = apiDecoded["current"]["condition"]["text"];
  //forecast
  final date0 = apiDecoded["forecast"]["forecastday"][0]["date"];
  final temp0 = apiDecoded["forecast"]["forecastday"][0]["day"]["avgtemp_c"];
  final icon0 = apiDecoded["forecast"]["forecastday"][0]["day"]["condition"]["icon"];
  final text0 = apiDecoded["forecast"]["forecastday"][0]["day"]["condition"]["text"];

  final date1 = apiDecoded["forecast"]["forecastday"][1]["date"];
  final temp1 = apiDecoded["forecast"]["forecastday"][1]["day"]["avgtemp_c"];
  final icon1 = apiDecoded["forecast"]["forecastday"][1]["day"]["condition"]["icon"];
  final text1 = apiDecoded["forecast"]["forecastday"][1]["day"]["condition"]["text"];

  final date2 = apiDecoded["forecast"]["forecastday"][2]["date"];
  final temp2 = apiDecoded["forecast"]["forecastday"][2]["day"]["avgtemp_c"];
  final icon2 = apiDecoded["forecast"]["forecastday"][2]["day"]["condition"]["icon"];
  final text2 = apiDecoded["forecast"]["forecastday"][2]["day"]["condition"]["text"];
  
  
  
  //Current Day
  todayWeather = todayImageLink;
  todayTemp = currentC.toString();
  todayDay = day;
  todayText = text;
  //Forecast;
  foretemp0 = temp0.toString();
  foreicon0 = icon0;
  foredate0 = date0;
  foretext0 = text0;

  foretemp1 = temp1.toString();
  foreicon1 = icon1;
  foredate1 = date1;
  foretext1 = text1;

  foretemp2 = temp2.toString();
  foreicon2 = icon2;
  foredate2 = date2;
  foretext2 = text2;


  print(todayTemp);
  notifyListeners();
  
  
  }
}
