import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_go/features/home/logic/home_cubit.dart';
import 'package:food_go/features/home/logic/home_states.dart';
import 'package:food_go/features/home/ui/widgets/grid_of_food.dart';

class BurgerBlocBuilder extends StatelessWidget{
  const BurgerBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit,HomeState>(
        builder: (context, state) {
      return state.maybeWhen(
        allBurgerLoading: () {
          return const GridOfFood(isLoading: true, burgers: [],);
        },
        allBurgersSuccess: (burgers) {
          if(burgers.isEmpty){
            return const SizedBox(
              child: Center(child: Text('No data to show')),
            );
          }
          return GridOfFood(isLoading: false, burgers: burgers);
        },
        allBurgerError: (error) {
          return const SizedBox(
            child: Center(child: Text('No data to show')),
          );
        },

        orElse: () {
        return const SizedBox.shrink();
      },
      );
    });
  }
}
