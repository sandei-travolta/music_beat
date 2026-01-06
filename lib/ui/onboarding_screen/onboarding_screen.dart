import 'package:flutter/material.dart';
import 'widgets/get_started_btn.dart';
import 'widgets/screen_one.dart';
import 'widgets/screen_two.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: ScreenTwo()),
          GetStartedBtn(),
        ],
      ),
    );
  }
}


