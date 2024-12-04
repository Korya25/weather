import 'package:dio/dio.dart';
import 'package:weather/data/models/weather_model.dart';

class WeatherApi {
  final Dio dio;
//https://api.weatherapi.com/v1/forecast.json?key=a229c7f78d364f48b03171035241601&q=London&days=10&aqi=yes&alerts=no
  WeatherApi(this.dio);
  // Url Component
  final String baseurl = 'https://api.weatherapi.com/v1/forecast.json';
  final String key = 'a229c7f78d364f48b03171035241601';

  final String apikey = 'a229c7f78d364f48b03171035241601';
  Future<WeatherModel> getdayWeather({required String cityName}) async {
    Response response =
        await dio.get('$baseurl?key=$key&q=$cityName&days=1&aqi=no&alerts=no');
    WeatherModel weatherModel = WeatherModel.fromjson(response.data);
    return weatherModel;
  }

  Future<WeekWeatherModel> getweekWeather(
      {required String cityName, int indexday = 0}) async {
    Response response =
        await dio.get('$baseurl?key=$key&q=$cityName&days=3&aqi=no&alerts=no');
    final List forcast = response.data['forecast']['forecastday'];

    WeekWeatherModel weekWeatherModel =
        WeekWeatherModel.fromjson(forcast[indexday]);
    return weekWeatherModel;
  }
}
