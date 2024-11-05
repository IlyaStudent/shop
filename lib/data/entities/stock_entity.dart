part of '../data.dart';

@HiveType(typeId: 1)
class StockEntity extends HiveObject {
  @HiveField(0)
  final DateTime beginDate;

  @HiveField(1)
  final DateTime endDate;

  @HiveField(2)
  final String title;

  @HiveField(3)
  final String imagePath;

  StockEntity({
    required this.beginDate,
    required this.endDate,
    required this.title,
    required this.imagePath,
  });
}
