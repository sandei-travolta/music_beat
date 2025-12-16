import 'package:flutter/material.dart';
import 'package:music_beat/ui/core/themes/colors.dart';

abstract final class AppTheme {
  static ThemeData lightTheme =ThemeData(
    brightness: .light,
    colorScheme: AppColors.lightColorScheme
  );
}