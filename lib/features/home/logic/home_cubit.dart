import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:food_go/features/custom_service/ui/custom_service_screen.dart';
import 'package:food_go/features/favourite/ui/favourite_screen.dart';
import 'package:food_go/features/home/data/repos/home_repo.dart';
import 'package:food_go/features/home/logic/home_states.dart';
import 'package:food_go/features/home/ui/screens/home_screen.dart';
import 'package:food_go/features/profile_setting/ui/profile_settings.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo homeRepo ;
  HomeCubit(this.homeRepo) : super(const HomeState.initial());

  int currentIndexOfPage = 0;
  int portionCount = 1;

  List<Widget> screens = [
    const HomeScreen(),
    const FavouriteScreen(),
    const CustomServiceScreen(),
    const ProfileSettingsScreen(),
  ];

  void changeBottomNavBarTab(int newSelectedIndex) {
    emit(const HomeState.initial());
    currentIndexOfPage = newSelectedIndex;
    emit(const HomeState.changeBottomNavBarTab());
  }


  Future<void> loadAllBurgers() async {
    emit(const HomeState.allBurgerLoading());
    try {
      final burgers = await homeRepo.loadAllBurgers();
      emit(HomeState.allBurgersSuccess(burgers));
    } catch (e) {
      emit(HomeState.allBurgerError(e.toString()));
    }
  }

  Future<void> loadBurgersByCategory(String category) async {
    emit(const HomeState.allBurgerLoading());
    try {
      final burgers = await homeRepo.loadBurgersByCategory(category);
      emit(HomeState.allBurgersSuccess(burgers));
    } catch (e) {
      emit(HomeState.allBurgerError(e.toString()));
    }
  }

  void increasePortion() {
    portionCount++;
    emit(HomeState.homePortionUpdated(portionCount));
  }

  void decreasePortion() {
    if (portionCount > 1) {
      portionCount--;
      emit(HomeState.homePortionUpdated(portionCount));
    }
  }

}