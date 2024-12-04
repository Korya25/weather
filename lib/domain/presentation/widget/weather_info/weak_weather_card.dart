import 'package:flutter/material.dart';
import 'package:weather/domain/presentation/widget/weather_info/wether_week_row.dart';

class WeakWeatherCard extends StatelessWidget {
  const WeakWeatherCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      height: 300,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      // ignore: prefer_const_constructors
      child: ListView.builder(
        itemCount: 7,
        itemBuilder: (BuildContext context, int index) {
          return const WeakWeatherRow(
            imagepath: 'assets/sun.png',
            cityname: 'Cairo',
            condtion: 'Patchy rain newarby',
            maxtemp: 23,
            mintemp: 12,
          );
        },
      ),
    );
  }
}
