import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_go/core/di/dependency_injection.dart';
import 'package:food_go/features/home/logic/home_cubit.dart';
import 'package:food_go/features/home/ui/widgets/burger_bloc_builder.dart';
import 'package:food_go/features/home/ui/widgets/home_header.dart';
import 'package:food_go/features/home/ui/widgets/list_of_categories.dart';
import 'package:food_go/features/home/ui/widgets/search_bar_and_icon.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeCubit>()..loadAllBurgers(),
      child: const Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeHeader(),
                SearchBarAndIcon(),
                ListOfCategories(),
                BurgerBlocBuilder(),
                // GridOfFood(isLoading: false,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
