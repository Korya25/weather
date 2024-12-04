import 'package:flutter/material.dart';
import 'package:weather/data/models/weather_model.dart';
import 'package:weather/domain/presentation/widget/weather_info/wether_week_row.dart';

class WeakWeatherCard extends StatelessWidget {
  const WeakWeatherCard({super.key, required this.weatherModel});
  final WeatherModel weatherModel;
  @override
  Widget build(BuildContext context) {
    const int index = 3;
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      // ignore: prefer_const_constructors
      child: ListView.builder(
        itemCount: index,
        itemBuilder: (BuildContext context, int index) {
          return WeakWeatherRow(
            weatherModel: weatherModel,
            indexday: index,
          );
        },
      ),
    );
  }
}
