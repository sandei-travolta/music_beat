import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:music_beat/ui/dashboard/dashboard_page.dart';
import 'package:music_beat/ui/discover/discover_page.dart';
import 'package:music_beat/ui/homepage/home_page.dart';
import 'package:music_beat/ui/settings/settings_page.dart';
import 'package:music_beat/ui/onboarding_screen/onboarding_screen.dart';
import 'package:music_beat/ui/stats/stats_page.dart';

import 'routes.dart';

GoRouter router()=>GoRouter(
    initialLocation: Routes.onboardingScreen,
    routes: [
      GoRoute(path: Routes.onboardingScreen,
      builder: (context,state){
        return OnboardingScreen();
      }),
      GoRoute(
        path: Routes.home,
        redirect: (_, __) => Routes.dashboard,
      ),
      ShellRoute(
          builder: (context,state,child){
            return HomePage(child: child);
          },
          routes:[
            GoRoute(path: Routes.dashboard,
                builder: (context,state){
                    return DashboardPage();
                }),
            GoRoute(path: Routes.discover,
                builder: (context,state){
                    return DiscoverPage();
                }),
            GoRoute(path: Routes.stats,
                builder: (context,state)=>StatsPage()),
            GoRoute(path: Routes.settings,
                builder:(context,state)=>SettingsPage())
          ]
      )
    ]
);