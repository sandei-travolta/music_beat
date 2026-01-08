import 'package:flutter/material.dart';
import 'package:music_beat/ui/core/themes/colors.dart';

abstract final class AppTheme {
  static ThemeData lightTheme =ThemeData(
      brightness: .light,
    colorScheme: AppColors.lightColorScheme,
    textTheme: _textTheme,
    elevatedButtonTheme: _elevatedButtonTheme,
    bottomNavigationBarTheme: _bottomNavigationTheme
  );
  static const _textTheme=TextTheme(
    bodyMedium: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500,),
    titleMedium: TextStyle(fontSize: 18.0)
  );

  static final _elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.black1,
      foregroundColor: AppColors.white1,
      minimumSize: const Size(double.infinity*0.6, 48),
      textStyle: TextStyle(
        fontSize: 18.0,
        fontWeight: .w600
      )
    ),
  );
  static final _bottomNavigationTheme=BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    backgroundColor: AppColors.black1,
    selectedItemColor: AppColors.white1,
    unselectedItemColor: Colors.grey,
    selectedIconTheme: IconThemeData(color: AppColors.white1),
    unselectedIconTheme: IconThemeData(color: Colors.grey),
  );
}