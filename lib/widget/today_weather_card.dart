import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather/widget/min_max_temp.dart';

class TodayWeatherCard extends StatelessWidget {
  const TodayWeatherCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 200,
      width: 300,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 32, 113, 254),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Text(
            'Cairo',
            style: GoogleFonts.abel(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
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
              const SizedBox(
                height: 40,
                width: 40,
                child: Image(
                  image: AssetImage('assets/sun.png'),
                  fit: BoxFit.fill,
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              Text(
                '17',
                style: GoogleFonts.abel(
                  fontSize: 25,
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
          Text(
            'Patchy reain nearby',
            style: GoogleFonts.abel(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
