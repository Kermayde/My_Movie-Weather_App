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
  

    final String weather = ModalRoute.of(context)?.settings.arguments.toString() ?? "no-weather";
  print("1111111");

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
            Container(
              height: 800,
              width: double.infinity,
              color: Color.fromARGB(0, 224, 226, 227),
              child: Column(children: [
                _ImageAndTemp(
                  weatherProvider.todayWeather, 
                  weatherProvider.todayTemp,
                  weatherProvider.todayDay,
                  weatherProvider.todayText,
                  //forecast0
                  weatherProvider.foretemp0,
                  weatherProvider.foreicon0,
                  weatherProvider.foredate0,
                  weatherProvider.foretext0,
                  //forecast1
                  weatherProvider.foretemp1,
                  weatherProvider.foreicon1,
                  weatherProvider.foredate1,
                  weatherProvider.foretext1,
                  //forecast2
                  weatherProvider.foretemp2,
                  weatherProvider.foreicon2,
                  weatherProvider.foredate2,
                  weatherProvider.foretext2,
                ),
              ],
              ),
            ),
              
          
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
  final String foretemp0;
  final String foreicon0;
  final String foredate0;
  final String foretext0;
  final String foretemp1;
  final String foreicon1;
  final String foredate1;
  final String foretext1;
  final String foretemp2;
  final String foreicon2;
  final String foredate2;
  final String foretext2;
  _ImageAndTemp(
    this.todayWeather, 
    this.todayTemp, 
    this.todayDay, 
    this.todayText,
    //forecast
    this.foretemp0,
    this.foreicon0,
    this.foredate0,
    this.foretext0,  
    this.foretemp1,
    this.foreicon1,
    this.foredate1,
    this.foretext1, 
    this.foretemp2,
    this.foreicon2,
    this.foredate2,
    this.foretext2, 
  );
  

  @override
  State<_ImageAndTemp> createState() => _ImageAndTempState();
}

class _ImageAndTempState extends State<_ImageAndTemp> {
  
 
  @override
  
  Widget build(BuildContext context) {
    return Container(child: Column(children: [
      Container(
        margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric( horizontal: 20 ),
      height: 150.0,
      width: 375,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 69, 88, 142),
        borderRadius: BorderRadius.all(
          Radius.circular (19.0)
        ),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(119, 0, 0, 0),
            spreadRadius: 3,
            blurRadius: 7,
          )
        ]
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FadeInImage(
              placeholder: AssetImage("assets/pastialc.png"), 
              image: NetworkImage(widget.todayWeather), 
            ),
          ),
          SizedBox(width: 60),
          Container(
            height: 70,
            
            child: Row(children: [
            Column(
            
            children: [
              Text('${widget.todayTemp} °C', style: Theme.of(context).textTheme.headline5, overflow: TextOverflow.ellipsis, maxLines: 2,),
              Text('${widget.todayDay}', style: Theme.of(context).textTheme.subtitle1, overflow: TextOverflow.ellipsis,),
              Text('${widget.todayText}', style: Theme.of(context).textTheme.subtitle1, overflow: TextOverflow.ellipsis,),
            ],
          )
          ],),)
        ],
      ),
      ),
      /// ggggggg
      Container(
        height: 50.0,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color.fromARGB(0, 54, 54, 244)
        )
      ),
      Container(
        height: 200.0,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color.fromARGB(0, 244, 67, 54),
          borderRadius: BorderRadius.all(
            Radius.circular (32.0)
          )
        ),
        child: Row(children: [


          SizedBox(width: 10),


          Container(
            height: 200.0,
            width: 117,
            decoration: const BoxDecoration(
              color: Color.fromARGB(135, 133, 133, 133),
              borderRadius: BorderRadius.all(
                Radius.circular (32.0)
              ),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(119, 0, 0, 0),
                  spreadRadius: 3,
                  blurRadius: 7,
                )
              ]
            ),
            child: Column(children: [
              
              SizedBox(height: 20),

              Column(
                children: [
                  Text('${widget.foretemp0} °C', style: Theme.of(context).textTheme.headline5, overflow: TextOverflow.ellipsis, maxLines: 2,),
                ],
              ),
              
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: FadeInImage(
                  placeholder: AssetImage("assets/pastialc.png"), 
                  image: NetworkImage('http:${widget.foreicon0}'), 
                ),
              ),
              
              SizedBox(height: 20),

              Column(
                children: [
                  Text('${widget.foredate0}', style: Theme.of(context).textTheme.subtitle1, overflow: TextOverflow.ellipsis,),
                  Text('${widget.foretext0}', style: Theme.of(context).textTheme.subtitle1, overflow: TextOverflow.ellipsis,),
                ],
              )
            ]),
          ),


          SizedBox(width: 10),


          Container(
            height: 200.0,
            width: 117,
            decoration: const BoxDecoration(
              color: Color.fromARGB(135, 133, 133, 133),
              borderRadius: BorderRadius.all(
                Radius.circular (32.0)
              ),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(119, 0, 0, 0),
                  spreadRadius: 3,
                  blurRadius: 7,
                )
              ]
            ),
            child: Column(children: [
              
              SizedBox(height: 20),

              Column(
                children: [
                  Text('${widget.foretemp1} °C', style: Theme.of(context).textTheme.headline5, overflow: TextOverflow.ellipsis, maxLines: 2,),
                ],
              ),
              
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: FadeInImage(
                  placeholder: AssetImage("assets/pastialc.png"), 
                  image: NetworkImage('http:${widget.foreicon1}'), 
                ),
              ),
              
              SizedBox(height: 20),

              Column(
                children: [
                  Text('${widget.foredate1}', style: Theme.of(context).textTheme.subtitle1, overflow: TextOverflow.ellipsis,),
                  Text('${widget.foretext1}', style: Theme.of(context).textTheme.subtitle1, overflow: TextOverflow.ellipsis,),
                ],
              )
            ]),
          ),


          SizedBox(width: 10),


          Container(
            height: 200.0,
            width: 117,
            decoration: const BoxDecoration(
              color: Color.fromARGB(135, 133, 133, 133),
              borderRadius: BorderRadius.all(
                Radius.circular (32.0)
              ),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(119, 0, 0, 0),
                  spreadRadius: 3,
                  blurRadius: 7,
                )
              ]
            ),
            child: Column(children: [
              
              SizedBox(height: 20),

              Column(
                children: [
                  Text('${widget.foretemp2} °C', style: Theme.of(context).textTheme.headline5, overflow: TextOverflow.ellipsis, maxLines: 2,),
                ],
              ),
              
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: FadeInImage(
                  placeholder: AssetImage("assets/pastialc.png"), 
                  image: NetworkImage('http:${widget.foreicon2}'), 
                ),
              ),
              
              SizedBox(height: 20),

              Column(
                children: [
                  Text('${widget.foredate2}', style: Theme.of(context).textTheme.subtitle1, overflow: TextOverflow.ellipsis,),
                  Text('${widget.foretext2}', style: Theme.of(context).textTheme.subtitle1, overflow: TextOverflow.ellipsis,),
                ],
              )
            ]),
          ),



          SizedBox(width: 11),


        ],),
      )
    ],),);
      
    
    
  }
}


