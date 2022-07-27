import 'package:flutter/material.dart';
import 'package:peliculas/screens/weather_screen.dart';

import 'package:provider/provider.dart';

import 'package:peliculas/search/search_delegate.dart';
import 'package:peliculas/providers/movies_provider.dart';
import 'package:peliculas/widgets/widgets.dart';


class HomeScreen extends StatelessWidget {

  
  
  @override
  Widget build(BuildContext context) {

    final moviesProvider = Provider.of<MoviesProvider>(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('My Movies'),
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon( Icons.search_outlined ),
            onPressed: () => showSearch(context: context, delegate: MovieSearchDelegate() ),
          )
        ],
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Carlos Flores"), 
              accountEmail: new Text("carlos.flores.is@unipolidgo.edu.mx"),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: AssetImage('assets/profile.jpg'),
              ),
            ),
            new ListTile(
              title: new Text("Movies"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(context, new MaterialPageRoute(
                  builder:(BuildContext context)  => new HomeScreen())
                );
              },
            ),
            new Divider(
              color: Color.fromARGB(255, 147, 147, 147),
              height: 6.0,
            ),
            new ListTile(
              title: new Text("Weather"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(context, new MaterialPageRoute(
                  builder:(BuildContext context)  => new WeatherScreen())
                );
              },
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            // Tarjetas principales
            CardSwiper( movies: moviesProvider.onDisplayMovies ),

            // Slider de películas
            MovieSlider(
              movies: moviesProvider.popularMovies,// populares,
              title: 'Populars', // opcional
              onNextPage: () => moviesProvider.getPopularMovies(),
            ),
            
          ],
        ),
      )
    );
  }
}