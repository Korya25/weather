import 'package:flutter/material.dart';
import 'package:weather/widget/custom_app_bar.dart';

class HomScreen extends StatelessWidget {
  const HomScreen({super.key});
  static const String id = 'HomScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CutomAppBar(),
      ),
    );
  }
}
