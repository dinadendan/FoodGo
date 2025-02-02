import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_go/features/home/logic/home_cubit.dart';
import 'package:food_go/features/home/logic/home_states.dart';
import 'package:food_go/features/home/ui/widgets/curved_bottom_navigation.dart';

class HomeLayoutScreen extends StatelessWidget{
  const HomeLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HomeLayoutCubit>();
    return BlocBuilder<HomeLayoutCubit, HomeLayoutState>(
      builder: (context,state) {
        return Scaffold(
          body: cubit.screens[cubit.currentIndexOfPage],
          bottomNavigationBar: CurvedBottomNavigation(
            onTap: (index) {
              cubit.changeBottomNavBarTab(index);
            },
          ),
        );
      },
    );
  }
}

