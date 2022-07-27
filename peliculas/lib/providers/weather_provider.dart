import 'package:flutter/material.dart';

class WeatherProvider extends ChangeNotifier {

  WeatherProvider() {
    print("WeatherProvider init");

    this.getOnDisplayWeather();
  }

  getOnDisplayWeather() {
    print("getOnDisplayWeather");
  }

}