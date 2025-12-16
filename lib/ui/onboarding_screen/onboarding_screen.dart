import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:music_beat/ui/core/resources/app_texts.dart';

import '../../routing/routes.dart';
import '../core/resources/app_svgs.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: .end,
        children: [
          SvgPicture.asset(AppSvgs.onboardingSvg),
          Container(
              padding: .symmetric(vertical:12.0,horizontal:17.0),
              child: Text(AppTexts.onboardingText,style:Theme.of(context).textTheme.bodyMedium,)),
          const SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: (){
                  context.go(Routes.home);
                },
                child: Text("Get Started")
            ),
          ),
          const SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
