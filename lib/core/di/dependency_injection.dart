import 'package:food_go/features/auth/data/repos/auth_repos.dart';
import 'package:food_go/features/auth/logic/auth_cubit.dart';
import 'package:food_go/features/home/data/repos/home_repo.dart';
import 'package:get_it/get_it.dart';
import '../../features/home/logic/home_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {

  // Auth
  getIt.registerLazySingleton<AuthRepos>(() => AuthRepos());
  getIt.registerFactory<AuthCubit>(()=>AuthCubit(getIt<AuthRepos>()));

  // Home
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo());
  getIt.registerFactory<HomeCubit>(()=>HomeCubit(getIt<HomeRepo>()));



}