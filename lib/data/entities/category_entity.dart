part of '../data.dart';

@HiveType(typeId: 2)
enum CategoryEntity {
  @HiveField(0)
  vegetables(
    name: LocalizationCosts.vegetables,
    imagePath: StringConsts.vegetablesImage,
    icon: Icons.eco,
  ),
  @HiveField(1)
  fruis(
    name: LocalizationCosts.fruits,
    imagePath: StringConsts.fruitsImage,
    icon: Icons.apple,
  ),
  @HiveField(2)
  drinks(
    name: LocalizationCosts.drinks,
    imagePath: StringConsts.drinksImage,
    icon: Icons.local_bar,
  ),
  ;

  const CategoryEntity({
    required this.name,
    required this.imagePath,
    required this.icon,
  });

  final String name;
  final String imagePath;
  final IconData icon;
}
