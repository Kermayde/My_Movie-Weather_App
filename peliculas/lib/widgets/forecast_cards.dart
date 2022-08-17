import 'package:flutter/material.dart';

class ForecastCarsd extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      width: double.infinity,
      height: 180,
      child: ListView.builder(
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, int idex) => _ForecastCard(),
      ),
    );
    
  }
}

class _ForecastCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric( horizontal: 10),
      width: 110,
      height: 100,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: FadeInImage(
              placeholder: AssetImage("assets/no-image.jpg"), 
              image: AssetImage("assets/pastialc.png"),
              height: 125,
            ),
          ),
          SizedBox(height: 1),
          Text(
            "Friday",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
          Text(
            "25°",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          )
        ]
      ),

    );
    
  }
}