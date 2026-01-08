import 'package:flutter/material.dart';
import 'package:music_beat/ui/onboarding_screen/view_models/onboarding_screen_view_model.dart';
import 'widgets/get_started_btn.dart';
import 'widgets/screen_one.dart';
import 'widgets/screen_two.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late final OnboardingScreenViewModel viewModel;
  List<Widget> pages=[
    ScreenOne(),
    ScreenTwo()
  ];
  @override
  void initState() {
    super.initState();
    viewModel=OnboardingScreenViewModel();
  }
  @override
  void dispose() {
    viewModel.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListenableBuilder(
        listenable: viewModel,
        builder: (context,child) {
          return Stack(
            children: [
              Positioned.fill(
                  child: pages[viewModel.page]),
              Positioned(
                  bottom: 16,
                  right: 16,
                  left: 16,
                  child: GetStartedBtn(page: viewModel.page,nextPage: viewModel.nextScreen))
            ],
          );
        }
      ),
    );
  }
}


