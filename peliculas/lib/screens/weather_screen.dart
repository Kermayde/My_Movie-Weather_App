import 'package:flutter/material.dart';
import 'package:peliculas/widgets/widgets.dart';


class WeatherScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

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
              _ImageAndTemp(),
              ForecastCarsd()
            ])
          )
        ],
        

      ),
    );
    
  }
}

class _ImageAndTemp extends StatelessWidget {

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
              image: AssetImage("assets/profile.jpg"),
              height: 150,
            ),
          ),
          SizedBox(width: 25,),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("temperature", style: Theme.of(context).textTheme.headline5, overflow: TextOverflow.ellipsis, maxLines: 2,),
              Text("Day", style: Theme.of(context).textTheme.subtitle1, overflow: TextOverflow.ellipsis,),
            ],
          )
        ],
      ),
    );
    
  }
}