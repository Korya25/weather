class WeatherModel {
  final String cityName;
  final String iconurl;
  final String lastUpdate;
  final String condtion;
  final double avgTemp;
  final double maxTemp;
  final double minTemp;

  WeatherModel(
      {required this.cityName,
      required this.iconurl,
      required this.lastUpdate,
      required this.condtion,
      required this.avgTemp,
      required this.maxTemp,
      required this.minTemp});

  factory WeatherModel.fromjson(json) {
    return WeatherModel(
      cityName: json['location']['name'],
      iconurl: json['forecast']['forecastday'][0]['day']['condition']['icon'],
      lastUpdate: json['current']['last_updated'],
      condtion: json['forecast']['forecastday'][0]['day']['condition']['text'],
      avgTemp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
      maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
    );
  }
}

class WeekWeatherModel {
  final String iconurl;
  final String condtion;
  final double avgTemp;
  final double maxTemp;
  final double minTemp;

  WeekWeatherModel(
      {required this.iconurl,
      required this.condtion,
      required this.avgTemp,
      required this.maxTemp,
      required this.minTemp});

  factory WeekWeatherModel.fromjson(json) {
    return WeekWeatherModel(
      iconurl: json['day']['condition']['icon'],
      condtion: json['day']['condition']['text'],
      avgTemp: json['day']['avgtemp_c'],
      maxTemp: json['day']['maxtemp_c'],
      minTemp: json['day']['mintemp_c'],
    );
  }
}
