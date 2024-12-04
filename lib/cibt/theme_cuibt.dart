import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/constant/app_theme.dart';

enum ThemeState { light, dark }

class ThemeCuibt extends Cubit<ThemeState> {
  ThemeCuibt() : super(ThemeState.light);

  void toggletheme() {
    emit(state == ThemeState.dark ? ThemeState.light : ThemeState.dark);
  }

  /// التحقق مما إذا كان الوضع الحالي هو الوضع الليلي
  bool get isDarkMode => state == ThemeState.dark;

  /// إرجاع الثيم المناسب بناءً على الحالة
  ThemeData get currentTheme =>
      state == ThemeState.light ? AppThemes.light : AppThemes.dark;
}
