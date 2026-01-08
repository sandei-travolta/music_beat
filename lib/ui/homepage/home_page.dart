import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../routing/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.child});
  final Widget child;
  int _locationToIndex(String location) {
    if (location.startsWith(Routes.discover)) return 1;
    if (location.startsWith(Routes.stats)) return 2;
    if (location.startsWith(Routes.settings)) return 3;
    return 0;
  }
  void _onTap(BuildContext context, int index) {
    switch (index) {
      case 0:
        context.go(Routes.dashboard);
        break;
      case 1:
        context.go(Routes.discover);
        break;
      case 2:
        context.go(Routes.stats);
        break;
      case 3:
        context.go(Routes.settings);
        break;
    }
  }
  @override
  Widget build(BuildContext context) {
    final location = GoRouterState.of(context).uri.toString();
    final currentIndex = _locationToIndex(location);
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => _onTap(context, index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            activeIcon: Icon(Icons.search),
            label: "Discover",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart_outlined),
            activeIcon: Icon(Icons.bar_chart),
            label: "Stats",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            activeIcon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
