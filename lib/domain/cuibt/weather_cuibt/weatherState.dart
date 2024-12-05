class Weatherstate {}

class NoweatherDataState extends Weatherstate {}

class WeatherDataState extends Weatherstate {
  final String cityName;

  WeatherDataState({required this.cityName});
}
