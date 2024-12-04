import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather/data/models/weather_model.dart';
import 'package:weather/data/source/remote/weather_api.dart';
import 'package:weather/domain/presentation/widget/weather_info/data_info.dart';

class Futurebuilderdata extends StatelessWidget {
  const Futurebuilderdata({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<WeatherModel>(
      future: WeatherApi(Dio()).getdayWeather(cityName: 'tanta'),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasData) {
            return DataInfo(weatherModel: snapshot.data!);
          } else if (snapshot.hasError) {
            return const Center(
              child: Text('Has Error'),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
