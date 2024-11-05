part of '../data.dart';

@HiveType(typeId: 0)
class ProductEntity extends HiveObject {
  @HiveField(0)
  final String name;

  @HiveField(1)
  final CategoryEntity category;

  @HiveField(2)
  final String measurementUnit;

  @HiveField(3)
  final String imagePath;

  @HiveField(4)
  final double price;

  @HiveField(5)
  final double oldPrice;

  @HiveField(6)
  final int popularity;

  @HiveField(7)
  final bool isFavourite;

  ProductEntity({
    required this.name,
    required this.category,
    required this.measurementUnit,
    required this.imagePath,
    required this.price,
    required this.oldPrice,
    required this.popularity,
    required this.isFavourite,
  });
}
