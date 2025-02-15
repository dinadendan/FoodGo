import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_go/features/home/ui/widgets/item_of_categories_list.dart';

class ListOfCategories extends StatefulWidget{
  const ListOfCategories({super.key});

  @override
  State<ListOfCategories> createState() => _ListOfCategoriesState();
}

class _ListOfCategoriesState extends State<ListOfCategories> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index) => GestureDetector(
          onTap: (){
            setState(() {
              selectedIndex = index;
            });
          },
            child: ItemOfCategoriesList(itemIndex: index, selectedIndex: selectedIndex,)),
        itemCount: 6,
      ),
    );
  }
}

