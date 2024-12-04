import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather/widget/weather_info/citty_name_condtion_text.dart';
import 'package:weather/widget/weather_info/image_weather.dart';
import 'package:weather/widget/weather_info/min_max_temp.dart';
import 'package:weather/widget/weather_info/temp_widget.dart';

class TodayWeatherCard extends StatelessWidget {
  const TodayWeatherCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          height: 200,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              const CondtionOrNameCityText(
                title: 'Cairo',
                endSubString: 50,
              ),
              Text(
                'Last Update: 17:45',
                style: GoogleFonts.abel(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const ImageWeather(
                    imagePath: 'assets/sun.png',
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  TempWidget(
                    title: '17',
                    textStyle: GoogleFonts.abel(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  MinAndMaxTemp(
                    maxTemp: 'maxtemp:20',
                    minTemp: 'mintemp: 12',
                    textStyle: GoogleFonts.abel(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              const Spacer(
                flex: 1,
              ),
              const CondtionOrNameCityText(
                endSubString: 18,
                title: 'Patchy rain nearby',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
