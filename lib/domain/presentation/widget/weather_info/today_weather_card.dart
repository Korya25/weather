import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather/data/models/weather_model.dart';
import 'package:weather/domain/presentation/widget/weather_info/citty_name_condtion_text.dart';
import 'package:weather/domain/presentation/widget/weather_info/image_weather.dart';
import 'package:weather/domain/presentation/widget/weather_info/min_max_temp.dart';
import 'package:weather/domain/presentation/widget/weather_info/temp_widget.dart';

class TodayWeatherCard extends StatelessWidget {
  const TodayWeatherCard({
    super.key,
    required this.weatherModel,
  });
  final WeatherModel weatherModel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: Column(
        children: [
          CondtionOrNameCityText(
            title: weatherModel.cityName,
            endSubString: 50,
          ),
          Text(
            'Update at: ${weatherModel.lastUpdate.hour}:${weatherModel.lastUpdate.minute}',
            style: GoogleFonts.abel(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: 300,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ImageWeather(
                  imagePath: 'https:${weatherModel.iconurl}',
                  widthIcon: 70,
                ),
                const Spacer(
                  flex: 1,
                ),
                TempWidget(
                  title: weatherModel.avgTemp.round().toString(),
                  textStyle: GoogleFonts.abel(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                MinAndMaxTemp(
                  maxTemp: 'maxtemp: ${weatherModel.maxTemp.round()}',
                  minTemp: 'mintemp: ${weatherModel.minTemp.round()}',
                  textStyle: GoogleFonts.abel(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          CondtionOrNameCityText(
            endSubString: 12,
            title: weatherModel.condtion,
          ),
        ],
      ),
    );
  }
}
