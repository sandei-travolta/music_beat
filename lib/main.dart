import 'package:flutter/material.dart';
import 'package:music_beat/routing/router.dart';
import 'package:music_beat/ui/core/themes/theme.dart';
import 'package:rive/rive.dart' as rive;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await rive.RiveNative.init();
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
