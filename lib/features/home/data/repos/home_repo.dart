import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:food_go/features/home/data/models/burger_model.dart';

class HomeRepo{

  Future<List<BurgerModel>> loadAllBurgers() async {
    try {
      final String jsonString = await rootBundle.loadString('assets/json/burgers.json');
      final List<dynamic> jsonData = jsonDecode(jsonString);

      return jsonData.map((e) => BurgerModel.fromJson(e)).toList();
    } catch (e) {
      throw Exception("Failed to load Burgers: $e");
    }
  }

  Future<List<BurgerModel>> loadBurgersByCategory(String category) async {
    try {
      final String jsonString = await rootBundle.loadString('assets/json/burgers.json');
      final List<dynamic> jsonData = jsonDecode(jsonString);

      return jsonData
          .where((e) => e['category'] == category)
          .map((e) => BurgerModel.fromJson(e))
          .toList();
    } catch (e) {
      throw Exception("Failed to load Burgers by category: $e");
    }
  }

}