import 'package:flutter/material.dart';
import 'package:food_go/features/home/widgets/home_header.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              HomeHeader(),
            ],
          ),
        ),
      ),
    );
  }
}
