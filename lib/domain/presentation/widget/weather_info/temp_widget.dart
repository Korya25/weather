import 'package:flutter/material.dart';

class TempWidget extends StatelessWidget {
  const TempWidget({
    super.key,
    required this.title,
    required this.textStyle,
  });

  final String title;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Text(title, style: textStyle, maxLines: 1);
  }
}
