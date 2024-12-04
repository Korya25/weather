import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather/domain/presentation/widget/weather_info/citty_name_condtion_text.dart';
import 'package:weather/domain/presentation/widget/weather_info/image_weather.dart';
import 'package:weather/domain/presentation/widget/weather_info/temp_widget.dart';

class WeakWeatherRow extends StatelessWidget {
  const WeakWeatherRow({
    super.key,
    required this.imagepath,
    this.imagewidth = 30,
    required this.cityname,
    required this.condtion,
    required this.maxtemp,
    required this.mintemp,
  });
  final String imagepath;
  final String cityname;
  final String condtion;
  final double imagewidth;
  final double maxtemp;
  final double mintemp;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CondtionOrNameCityText(title: cityname),
          const SizedBox(
            width: 10,
          ),
          ImageWeather(
            imagePath: imagepath,
            widthIcon: imagewidth,
          ),
          const SizedBox(
            width: 10,
          ),
          TempWidget(
            title: maxtemp.toString(),
            textStyle: GoogleFonts.abel(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          TempWidget(
            title: mintemp.toString(),
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
            title: condtion,
            endSubString: 11,
          )
        ],
      ),
    );
  }
}
