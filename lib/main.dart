import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_go/core/di/dependency_injection.dart';
import 'package:food_go/core/helper/bloc_observer.dart';
import 'package:food_go/food_go.dart';

import 'core/routing/app_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  await setupGetIt();
  Bloc.observer = MyBlocObserver();
  runApp(FoodGo(appRouter: AppRouter(),));
}



