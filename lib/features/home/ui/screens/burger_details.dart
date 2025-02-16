import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_go/core/helper/spacing.dart';
import 'package:food_go/core/shared_widgets/app_text_button.dart';
import 'package:food_go/core/theming/app_colors.dart';
import 'package:food_go/core/theming/app_text_styles.dart';
import 'package:food_go/features/home/data/models/burger_model.dart';
import 'package:food_go/features/home/logic/home_cubit.dart';
import 'package:food_go/features/home/logic/home_states.dart';
import 'package:food_go/features/home/ui/widgets/spicy_and_portion.dart';

class BurgerDetails extends StatelessWidget{
  final BurgerModel burgers ;
  const BurgerDetails({super.key, required this.burgers});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        final cubit = context.read<HomeCubit>();
        final double totalPrice = burgers.price * cubit.portionCount;
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon:  Icon(Icons.arrow_back,
                color: Colors.black,
                size: 26.sp,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  burgers.image,
                  fit: BoxFit.contain,
                  height: 250.h,
                  width: double.infinity,
                ),
                verticalSpace(10),
                Text(
                  '${burgers.name} Burger',
                  style: AppTextStyles.font24BlackBold,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                verticalSpace(10),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 18.sp,
                    ),
                    horizontalSpace(10),
                    Text(
                      burgers.rate.toString(),
                      style: AppTextStyles.font18Grey.copyWith(
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    const Spacer(),
                    Text(
                      '${burgers.price.toString()} L.E',
                      style: AppTextStyles.font18Grey,
                    ),

                  ],
                ),
                verticalSpace(20),
                Text(
                  burgers.description,
                  style: AppTextStyles.font16Grey,
                ),
                verticalSpace(10),
                Text(
                  'Ingredients: ${burgers.ingredients .join(', ')}',
                  style: AppTextStyles.font16Grey,
                ),
                verticalSpace(30),
                const SpicyAndPortion(),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AppTextButton(
                      buttonText: '\$ ${totalPrice.toString()} L.E',
                      textStyle: AppTextStyles.font18White,
                      buttonWidth: 100.w,
                      onPressed: () {},
                    ),
                    AppTextButton(
                      buttonText: 'ORDER NOW',
                      textStyle: AppTextStyles.font18White,
                      buttonWidth: 150.w,
                      backgroundColor: AppColors.darkBrown,
                      onPressed: () {},

                    ),
                  ],
                ),
                verticalSpace(15),
              ],
            ),
          ),
        );
      },
    );
  }
}
