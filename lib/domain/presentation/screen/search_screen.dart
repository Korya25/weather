import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/domain/cuibt/weather_cuibt/weather_cuibt.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});
  static const String id = 'SearchScreen';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: CustomTexField(),
        ),
      ),
    );
  }
}

class CustomTexField extends StatelessWidget {
  const CustomTexField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: (value) {
        if (value.isNotEmpty) {
          BlocProvider.of<WeatherCuibt>(context).getdata(value);
        }
        Navigator.pop(context);
      },
      decoration: InputDecoration(
        suffixIcon: const Icon(Icons.search),
        labelText: 'Search',
        hintText: 'Enter city name',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
        ),
      ),
    );
  }
}
