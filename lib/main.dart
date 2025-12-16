import 'package:flutter/material.dart';
import 'package:music_beat/routing/router.dart';
import 'package:music_beat/ui/core/themes/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme.lightTheme,

      routerConfig: router(),
    );
  }
}
