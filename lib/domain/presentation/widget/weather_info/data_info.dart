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
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                height: 200,
                child: TodayWeatherCard(
                  weatherModel: weatherModel,
                )),
            const Divider(
              thickness: 0.2,
              endIndent: 70,
              indent: 70,
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
