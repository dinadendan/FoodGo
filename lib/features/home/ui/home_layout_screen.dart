import 'package:flutter/material.dart';
import 'package:food_go/features/custom_service/ui/custom_service_screen.dart';
import 'package:food_go/features/favourite/ui/favourite_screen.dart';
import 'package:food_go/features/home/ui/screens/home_screen.dart';
import 'package:food_go/features/home/ui/widgets/curved_bottom_navigation.dart';
import 'package:food_go/features/profile_setting/ui/profile_settings.dart';

class HomeLayoutScreen extends StatefulWidget{
  const HomeLayoutScreen({super.key});

  @override
  State<HomeLayoutScreen> createState() => _HomeLayoutScreenState();
}

class _HomeLayoutScreenState extends State<HomeLayoutScreen> {
  int selectedIndex = 0;
  late List<Widget> screens;

  @override
  void initState() {
    super.initState();
    screens = [
      const HomeScreen(),
      const FavouriteScreen(),
      const CustomServiceScreen(),
      const ProfileSettingsScreen(),
    ];
  }
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: screens[selectedIndex],
        bottomNavigationBar: CurvedBottomNavigation(
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
        ),
      );
    }
  }


