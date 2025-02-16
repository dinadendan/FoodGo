// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'burger_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BurgerModel _$BurgerModelFromJson(Map<String, dynamic> json) => BurgerModel(
      category: json['category'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
      description: json['description'] as String,
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      price: (json['price'] as num).toDouble(),
      rate: (json['rate'] as num).toDouble(),
    );

Map<String, dynamic> _$BurgerModelToJson(BurgerModel instance) =>
    <String, dynamic>{
      'category': instance.category,
      'name': instance.name,
      'image': instance.image,
      'description': instance.description,
      'ingredients': instance.ingredients,
      'price': instance.price,
      'rate': instance.rate,
    };
