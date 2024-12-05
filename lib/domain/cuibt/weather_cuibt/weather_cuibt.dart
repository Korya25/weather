import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/domain/cuibt/weather_cuibt/weatherState.dart';

class WeatherCuibt extends Cubit<Weatherstate> {
  WeatherCuibt() : super(NoweatherDataState());

  void getdata(String cityName) {
    emit(WeatherDataState(cityName: cityName));
  }
}
