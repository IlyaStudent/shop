// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CategoryEntityAdapter extends TypeAdapter<CategoryEntity> {
  @override
  final int typeId = 2;

  @override
  CategoryEntity read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return CategoryEntity.vegetables;
      case 1:
        return CategoryEntity.fruis;
      case 2:
        return CategoryEntity.drinks;
      default:
        return CategoryEntity.vegetables;
    }
  }

  @override
  void write(BinaryWriter writer, CategoryEntity obj) {
    switch (obj) {
      case CategoryEntity.vegetables:
        writer.writeByte(0);
        break;
      case CategoryEntity.fruis:
        writer.writeByte(1);
        break;
      case CategoryEntity.drinks:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CategoryEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ProductEntityAdapter extends TypeAdapter<ProductEntity> {
  @override
  final int typeId = 0;

  @override
  ProductEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductEntity(
      name: fields[0] as String,
      category: fields[1] as CategoryEntity,
      measurementUnit: fields[2] as String,
      imagePath: fields[3] as String,
      price: fields[4] as double,
      oldPrice: fields[5] as double,
      popularity: fields[6] as int,
      isFavourite: fields[7] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, ProductEntity obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.category)
      ..writeByte(2)
      ..write(obj.measurementUnit)
      ..writeByte(3)
      ..write(obj.imagePath)
      ..writeByte(4)
      ..write(obj.price)
      ..writeByte(5)
      ..write(obj.oldPrice)
      ..writeByte(6)
      ..write(obj.popularity)
      ..writeByte(7)
      ..write(obj.isFavourite);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class StockEntityAdapter extends TypeAdapter<StockEntity> {
  @override
  final int typeId = 1;

  @override
  StockEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StockEntity(
      beginDate: fields[0] as DateTime,
      endDate: fields[1] as DateTime,
      title: fields[2] as String,
      imagePath: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, StockEntity obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.beginDate)
      ..writeByte(1)
      ..write(obj.endDate)
      ..writeByte(2)
      ..write(obj.title)
      ..writeByte(3)
      ..write(obj.imagePath);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StockEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
