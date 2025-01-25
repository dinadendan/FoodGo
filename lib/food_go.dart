import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_go/core/routing/app_router.dart';
import 'package:food_go/core/routing/routes_names.dart';
import 'package:food_go/core/theming/app_themes.dart';

class FoodGo extends StatelessWidget{
  final AppRouter appRouter;
  const FoodGo({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: lightTheme,
          initialRoute: Routes.homeLayout,
          onGenerateRoute: appRouter.generateRoute,
        );
      },
    );
  }
}
