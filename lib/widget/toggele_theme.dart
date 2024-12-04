import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/cibt/theme_cuibt.dart';

class TogglThemebuttton extends StatelessWidget {
  const TogglThemebuttton({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCuibt, ThemeState>(
      builder: (context, state) {
        return IconButton(
          onPressed: () {
            BlocProvider.of<ThemeCuibt>(context).toggletheme();
          },
          icon: Icon(
            state == ThemeState.light ? Icons.dark_mode : Icons.light_mode,
          ),
        );
      },
    );
  }
}
