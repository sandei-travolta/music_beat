import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:music_beat/ui/homepage/home_page.dart';
import 'package:music_beat/ui/onboarding_screen/onboarding_screen.dart';

import 'routes.dart';

GoRouter router()=>GoRouter(
    initialLocation: Routes.onboardingScreen,
    routes: [
      GoRoute(
          path: Routes.home,
          builder: (context,state){
            return HomePage();
          }
      ),
      GoRoute(path: Routes.onboardingScreen,
      builder: (context,state){
        return OnboardingScreen();
      })
    ]
);