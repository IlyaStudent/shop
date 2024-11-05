part of '../../data.dart';

abstract class LocalProductsDataProvider {
  Future<void> writeProducts();

  Future<List<ProductEntity>> getAllProducts();

  Future<List<ProductEntity>> getProductsByCategory(CategoryEntity category);
}
