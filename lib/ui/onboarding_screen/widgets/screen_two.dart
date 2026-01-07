import 'package:flutter/material.dart';
import 'package:music_beat/ui/core/resources/app_images.dart';
import 'package:music_beat/ui/core/resources/app_texts.dart';
class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(AppImages.OnboardingImage1),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: .center,
          crossAxisAlignment: .center,
          children: [
            Text(
              AppTexts.onboardingText1,textAlign: .center,
              style: TextTheme.of(context).titleMedium,
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(AppTexts.onboardingsubText1,
                style: TextTheme.of(context).bodyMedium,
                textAlign: .center,),
            )
          ],
        ),
      ),
    );
  }
}
