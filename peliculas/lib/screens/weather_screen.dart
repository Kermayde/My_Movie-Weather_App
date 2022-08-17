import 'dart:async';

import 'package:flutter/material.dart';
import 'package:peliculas/widgets/background.dart';
import 'package:peliculas/widgets/widgets.dart';
import 'package:peliculas/providers/weather_provider.dart';
import 'package:provider/provider.dart';



class WeatherScreen extends StatefulWidget {
  

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  @override
  Widget build(BuildContext context) {

    final weatherProvider = Provider.of<WeatherProvider>(context);
    print(weatherProvider.todayWeather);
    print(weatherProvider.todayTemp);

    final String weather = ModalRoute.of(context)?.settings.arguments.toString() ?? "no-weather";


    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text("My Weather"),
        elevation: 0,
        backgroundColor: Color.fromARGB(0, 255, 193, 7),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate([
              _ImageAndTemp(
                weatherProvider.todayWeather, 
                weatherProvider.todayTemp,
                weatherProvider.todayDay,
                weatherProvider.todayText
              ),
              ForecastCarsd(),
            ])
          )
        ],
        

      ),
    );
    
  }
}

class _ImageAndTemp extends StatefulWidget {
  final String todayWeather;
  final String todayTemp;
  final String todayDay;
  final String todayText;
  _ImageAndTemp(this.todayWeather, this.todayTemp, this.todayDay, this.todayText);
  

  @override
  State<_ImageAndTemp> createState() => _ImageAndTempState();
}

class _ImageAndTempState extends State<_ImageAndTemp> {
  
 
  @override
  
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric( horizontal: 20 ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FadeInImage(
              placeholder: AssetImage("assets/no-image.jpg"), 
              image: NetworkImage(widget.todayWeather), 
            ),
          ),
          SizedBox(width: 25,),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('${widget.todayTemp} °C', style: Theme.of(context).textTheme.headline5, overflow: TextOverflow.ellipsis, maxLines: 2,),
              Text('${widget.todayDay}', style: Theme.of(context).textTheme.subtitle1, overflow: TextOverflow.ellipsis,),
              Text('${widget.todayText}', style: Theme.of(context).textTheme.subtitle1, overflow: TextOverflow.ellipsis,),
            ],
          )
        ],
      ),
    );
    
  }
}