import 'package:flutter/material.dart';
import 'package:weather/domain/presentation/widget/futureBuilderdata.dart';

class WeatherDatascreen extends StatelessWidget {
  const WeatherDatascreen({
    super.key,
    required this.cityName,
  });
  final String cityName;
  static const String id = 'WeatherDatascreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilderData(
        cityName: cityName,
      ),
    );
  }
}
