import 'package:food_go/features/home/data/repos/home_repo.dart';
import 'package:get_it/get_it.dart';
import '../../features/home/logic/home_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo());
  getIt.registerFactory<HomeCubit>(()=>HomeCubit(getIt<HomeRepo>()));

}