import 'package:flutter/material.dart';

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
        Navigator.pop(context);
      },
      decoration: const InputDecoration(
          suffixIcon: Icon(Icons.search),
          labelText: 'Search',
          hintText: 'Enter city name',
          border: OutlineInputBorder()),
    );
  }
}
