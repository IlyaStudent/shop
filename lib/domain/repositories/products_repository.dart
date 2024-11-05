part of '../domain.dart';

abstract class ProductsRepository {
  Future<void> writeProducts();

  Future<List<ProductEntity>> getAllProducts();

  Future<List<ProductEntity>> getProductsByCategory(CategoryEntity category);
}
