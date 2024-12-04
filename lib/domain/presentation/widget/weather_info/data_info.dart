import 'package:flutter/material.dart';
import 'package:weather/data/models/weather_model.dart';
import 'package:weather/domain/presentation/widget/weather_info/today_weather_card.dart';
import 'package:weather/domain/presentation/widget/weather_info/weak_weather_card.dart';

class DataInfo extends StatelessWidget {
  const DataInfo({super.key, required this.weatherModel});

  final WeatherModel weatherModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TodayWeatherCard(
              weatherModel: weatherModel,
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Divider(
                thickness: 1,
                endIndent: 70,
                indent: 70,
              ),
            ),
            WeakWeatherCard(
              weatherModel: weatherModel,
            ),
          ],
        ),
      ),
    );
  }
}
