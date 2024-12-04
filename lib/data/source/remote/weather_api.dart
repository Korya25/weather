import 'package:dio/dio.dart';

class WeatherApi {
  final Dio dio;

  WeatherApi(this.dio);
  // Url Component
  final String baseurl = 'https://api.weatherapi.com/v1/forecast.json';
  final String key = '?key=a229c7f78d364f48b03171035241601';
  final String cityname = '&q=London';
  final String days = '&days=10';
}
