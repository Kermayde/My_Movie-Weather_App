import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:peliculas/providers/weather_provider.dart';
import 'package:peliculas/screens/screens.dart';
import 'package:peliculas/widgets/background.dart';

import 'package:provider/provider.dart';

import 'package:peliculas/providers/movies_provider.dart';
 
void main() => runApp(AppState());


class AppState extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ( _ ) => MoviesProvider(), lazy: false ),
        ChangeNotifierProvider(create: ( _ ) => WeatherProvider(), lazy: false ),
      ],
      child: MyApp(),
    );
  }
}


 
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Películas',
      initialRoute: 'home',
      routes: {
        'home':    ( _ ) => HomeScreen(),
        'details': ( _ ) => DetailsScreen(),
        'weather': ( _ ) => WeatherScreen(),
      },
      theme: ThemeData.dark().copyWith(
        
        appBarTheme: AppBarTheme(
          color: Color.fromARGB(255, 59, 94, 145)
        )
      ),
    );
  }
}