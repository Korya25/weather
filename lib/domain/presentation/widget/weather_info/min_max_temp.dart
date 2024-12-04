import 'package:flutter/material.dart';
import 'package:weather/domain/presentation/widget/weather_info/temp_widget.dart';

class MinAndMaxTemp extends StatelessWidget {
  const MinAndMaxTemp({
    super.key,
    required this.maxTemp,
    required this.minTemp,
    required this.textStyle,
  });
  final String maxTemp;
  final String minTemp;
  final TextStyle textStyle;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TempWidget(title: maxTemp, textStyle: textStyle),
          TempWidget(title: minTemp, textStyle: textStyle)
        ],
      ),
    );
  }
}
