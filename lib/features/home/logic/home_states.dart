import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_states.freezed.dart';

@freezed
class HomeLayoutState with _$HomeLayoutState {
  const factory HomeLayoutState.initial() = _Initial;
  const factory HomeLayoutState.changeBottomNavBarTab() = ChangeBottomNavBarTab;
}