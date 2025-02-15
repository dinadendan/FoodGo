import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_go/features/home/data/models/burger_model.dart';
import 'package:food_go/features/home/ui/widgets/food_shimmer.dart';
import 'package:food_go/features/home/ui/widgets/item_of_food_grid.dart';


class GridOfFood extends StatelessWidget{
  final bool isLoading;
  final List<BurgerModel> burgers ;
  const GridOfFood({super.key,required this.isLoading, required this.burgers});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomScrollView(
        slivers: [
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 4.w, // Spacing between columns
              mainAxisSpacing: 8.h, // Spacing between rows
              childAspectRatio: 1 / 1.2, // Aspect ratio of the items
            ),
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) => isLoading ? const FoodShimmerGrid() :  ItemOfFoodGrid(burgers: burgers[index]),
              childCount: burgers.length,
            ),
          ),
        ],
      ),
    );
  }
}
