import 'package:flutter/material.dart';

abstract final class AppColors{
  static const black1 = Color(0xFF101010);
  static const white1 = Color(0xFFFFF7FA);
  static const red1 = Color(0xFFE74C3C);
  static const lightColorScheme=ColorScheme(
      brightness: .light,
      primary: AppColors.black1,
      onPrimary: AppColors.white1,
      secondary: AppColors.black1,
      onSecondary: AppColors.white1,
      error: AppColors.white1,
      onError: AppColors.red1,
      surface: AppColors.white1,
      onSurface: AppColors.black1
  );
}