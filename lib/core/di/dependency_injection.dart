import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {


  // // Azkar
  // getIt.registerLazySingleton<AzkarRepository>(() => AzkarRepository());
  // getIt.registerFactory<AzkarCubit>(() => AzkarCubit(getIt<AzkarRepository>()));
}