import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather/data/models/weather_model.dart';
import 'package:weather/data/source/remote/weather_api.dart';
import 'package:weather/domain/presentation/widget/weather_info/data_info.dart';

class FutureBuilderData extends StatelessWidget {
  const FutureBuilderData({super.key, required this.cityName});
  final String cityName;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<WeatherModel>(
      future: WeatherApi(Dio()).getdayWeather(cityName: cityName),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text(
              'Unable to connect to the Internet. Check your connection and try again. Error: ${snapshot.error}',
              textAlign: TextAlign.center,
            ),
          );
        } else if (snapshot.hasData) {
          return DataInfo(weatherModel: snapshot.data!);
        } else {
          return const Center(
            child: Text(
              'No data available.',
              textAlign: TextAlign.center,
            ),
          );
        }
      },
    );
  }
}
