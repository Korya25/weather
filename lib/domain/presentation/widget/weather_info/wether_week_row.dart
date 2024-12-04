import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather/data/models/weather_model.dart';
import 'package:weather/data/source/remote/weather_api.dart';
import 'package:weather/domain/presentation/widget/weather_info/citty_name_condtion_text.dart';
import 'package:weather/domain/presentation/widget/weather_info/image_weather.dart';
import 'package:weather/domain/presentation/widget/weather_info/temp_widget.dart';

class WeakWeatherRow extends StatelessWidget {
  const WeakWeatherRow({
    super.key,
    this.imagewidth = 30,
    required this.weatherModel,
    required this.indexday,
  });
  final WeatherModel weatherModel;
  final int indexday;
  final double imagewidth;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: WeatherApi(Dio())
          .getweekWeather(cityName: weatherModel.cityName, indexday: indexday),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: SizedBox(
              width: 400,
              child: Row(
                children: [
                  CondtionOrNameCityText(title: weatherModel.cityName),
                  const SizedBox(
                    width: 10,
                  ),
                  ImageWeather(
                    imagePath: 'http:${snapshot.data!.iconurl}',
                    widthIcon: imagewidth,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  TempWidget(
                    title: snapshot.data!.maxTemp.round().toString(),
                    textStyle: GoogleFonts.abel(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  TempWidget(
                    title: snapshot.data!.minTemp.round().toString(),
                    textStyle: GoogleFonts.abel(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  CondtionOrNameCityText(
                    fontSize: 20,
                    title: snapshot.data!.condtion,
                    endSubString: 13,
                  )
                ],
              ),
            ),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
