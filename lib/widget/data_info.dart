import 'package:flutter/material.dart';
import 'package:weather/widget/today_weather_card.dart';

class DataInfo extends StatelessWidget {
  const DataInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 70),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TodayWeatherCard(),
          ],
        ),
      ),
    );
  }
}
