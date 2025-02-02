import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:food_go/features/custom_srevice/ui/custom_service_screen.dart';
import 'package:food_go/features/favourite/ui/favourite_screen.dart';
import 'package:food_go/features/home/logic/home_states.dart';
import 'package:food_go/features/home/ui/screens/home_screen.dart';
import 'package:food_go/features/profile_setting/ui/profile_settings.dart';

class HomeLayoutCubit extends Cubit<HomeLayoutState> {
  HomeLayoutCubit() : super(const HomeLayoutState.initial());

  int currentIndexOfPage = 0;
  List<Widget> screens = [
    const HomeScreen(),
    const FavouriteScreen(),
    const CustomServiceScreen(),
    const ProfileSettingsScreen(),
  ];

  void changeBottomNavBarTab(int newSelectedIndex) {
    emit(const HomeLayoutState.initial());
    currentIndexOfPage = newSelectedIndex;
    emit(const HomeLayoutState.changeBottomNavBarTab());
  }
}