import 'package:flutter/material.dart';

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
      width: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(maxTemp, style: textStyle, maxLines: 1),
          Text(minTemp, style: textStyle, maxLines: 1),
        ],
      ),
    );
  }
}
