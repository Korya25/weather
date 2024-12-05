import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/domain/cuibt/weather_cuibt/weatherState.dart';
import 'package:weather/domain/cuibt/weather_cuibt/weather_cuibt.dart';
import 'package:weather/domain/presentation/screen/weatherdata%20screen.dart';
import 'package:weather/domain/presentation/widget/appbar/custom_app_bar.dart';

class HomScreen extends StatelessWidget {
  const HomScreen({super.key});
  static const String id = 'HomScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CutomAppBar(),
      ),
      body: BlocBuilder<WeatherCuibt, Weatherstate>(
        builder: (context, state) {
          if (state is NoweatherDataState) {
            return const Center(
              child: Text("Start Search"),
            );
          } else if (state is WeatherDataState) {
            return WeatherDatascreen(
              cityName: state.cityName,
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
