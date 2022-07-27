import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

//http://api.weatherapi.com/v1/forecast.json?key=a1fc9e6c652b4edfaab143006222507&q=Durango&days=5&aqi=no&alerts=no
class WeatherProvider extends ChangeNotifier {

  String _key = "a1fc9e6c652b4edfaab143006222507";
  String _baseURL = "api.weatherapi.com";
  String _q = "Durango";
  String _days = "5";
  String _aqi = "no";
  String _alerts = "no";

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
  
  print(apiDecoded["days"]);
  }

}