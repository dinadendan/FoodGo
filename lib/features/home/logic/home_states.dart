import 'package:food_go/features/home/data/models/burger_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_states.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.changeBottomNavBarTab() = ChangeBottomNavBarTab;


  const factory HomeState.allBurgerLoading() = AllBurgerLoading;
  const factory HomeState.allBurgersSuccess(List<BurgerModel> burgers) = AllBurgersSuccess;
  const factory HomeState.allBurgerError(String errorMessage) = AllBurgerError;

  const factory HomeState.burgerByCategoryLoading() = BurgerByCategoryLoading;
  const factory HomeState.burgerByCategorySuccess(List<BurgerModel> burgers) = BurgerByCategorySuccess;
  const factory HomeState.burgerByCategoryError(String errorMessage) = BurgerByCategoryError;
}