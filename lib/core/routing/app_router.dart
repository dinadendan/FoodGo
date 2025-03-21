import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_go/core/di/dependency_injection.dart';
import 'package:food_go/core/routing/routes_names.dart';
import 'package:food_go/features/auth/logic/auth_cubit.dart';
import 'package:food_go/features/auth/ui/screens/login_screen.dart';
import 'package:food_go/features/auth/ui/screens/register_screen.dart';
import 'package:food_go/features/home/ui/home_layout_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    // final args = settings.arguments as Map<String, dynamic>?;
    switch (settings.name) {
      case Routes.login:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
              create: (context) => getIt<AuthCubit>(),
              child: const LoginScreen()),
        );

        case Routes.register:
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
              value: getIt<AuthCubit>(),
              child: const RegisterScreen()),
        );

      case Routes.homeLayout:
        return MaterialPageRoute(
          builder: (_) => const HomeLayoutScreen(),
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