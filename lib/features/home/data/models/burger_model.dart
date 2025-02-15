import 'package:json_annotation/json_annotation.dart';

part 'burger_model.g.dart';
@JsonSerializable()
class BurgerModel {
  BurgerModel({
    required this.category,
    required this.name,
    required this.image,
    required this.description,
    required this.ingredients,
    required this.price,
    required this.rate,
  });

  final String category;
  final String name;
  final String image;
  final String description;
  final List<String> ingredients;
  final double price;
  final double rate;

  factory BurgerModel.fromJson(Map<String, dynamic> json) => _$BurgerModelFromJson(json);

  Map<String, dynamic> toJson() => _$BurgerModelToJson(this);

}
