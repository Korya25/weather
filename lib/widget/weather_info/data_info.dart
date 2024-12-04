import 'package:flutter/material.dart';
import 'package:weather/widget/weather_info/today_weather_card.dart';
import 'package:weather/widget/weather_info/weak_weather_card.dart';

class DataInfo extends StatelessWidget {
  const DataInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 200, child: TodayWeatherCard()),
            Divider(
              thickness: 0.2,
              endIndent: 70,
              indent: 70,
            ),
            WeakWeatherCard(),
          ],
        ),
      ),
    );
  }
}
