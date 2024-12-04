import 'package:flutter/material.dart';
import 'package:weather/widget/toggele_theme.dart';

class HomScreen extends StatelessWidget {
  const HomScreen({super.key});
  static const String id = 'HomScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TogglThemebuttton(),
      ),
    );
  }
}
