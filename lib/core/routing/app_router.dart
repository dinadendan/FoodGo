import 'package:flutter/material.dart';
import 'package:food_go/core/routing/routes_names.dart';
import 'package:food_go/features/home/ui/home_layout_screen.dart';
import 'package:food_go/features/home/ui/screens/food_details.dart';



class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    final args = settings.arguments as Map<String, dynamic>?;
    switch (settings.name) {
      case Routes.homeLayout:
        return MaterialPageRoute(
          builder: (_) => const HomeLayoutScreen(),
        );

        case Routes.foodDetails:
          return MaterialPageRoute(
            builder: (_) => const FoodDetails(),
          );

      default:
        return MaterialPageRoute(
          builder: (_) =>
              Scaffold(
                body: Center(
                  child: Text('No route defined for ${settings.name}'),
                ),
              ),
        );
    }
  }
}