import 'package:get_it/get_it.dart';

import '../../features/home/logic/home_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  getIt.registerFactory<HomeLayoutCubit>(()=>HomeLayoutCubit());


  // // Azkar
  // getIt.registerLazySingleton<AzkarRepository>(() => AzkarRepository());
  // getIt.registerFactory<AzkarCubit>(() => AzkarCubit(getIt<AzkarRepository>()));
}