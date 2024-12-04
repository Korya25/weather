import 'package:flutter/material.dart';

class ImageWeather extends StatelessWidget {
  const ImageWeather({
    super.key,
    this.widthIcon = 50,
    required this.imagePath,
  });
  final double widthIcon;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Image(
      image: NetworkImage(imagePath),
      fit: BoxFit.fill,
      width: widthIcon,
    );
  }
}
