import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/constant/app_theme.dart';
import 'package:weather/domain/cuibt/theme_cuibt/theme_cuibt.dart';
import 'package:weather/domain/presentation/screen/hom_screen.dart';
import 'package:weather/domain/presentation/screen/search_screen.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => ThemeCuibt(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCuibt, ThemeState>(
      builder: (context, state) {
        return MaterialApp(
          theme: AppThemes.light,
          darkTheme: AppThemes.dark,
          themeMode:
              state == ThemeState.dark ? ThemeMode.light : ThemeMode.dark,
          routes: {
            HomScreen.id: (context) => const HomScreen(),
            SearchScreen.id: (context) => const SearchScreen()
          },
          initialRoute: HomScreen.id,
        );
      },
    );
  }
}
