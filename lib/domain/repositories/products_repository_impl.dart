part of '../domain.dart';

class ProductsRepositoryImpl implements ProductsRepository {
  final LocalProductsDataProvider localProductsDataProvider;

  ProductsRepositoryImpl({required this.localProductsDataProvider});

  @override
  Future<List<ProductEntity>> getAllProducts() =>
      localProductsDataProvider.getAllProducts();

  @override
  Future<List<ProductEntity>> getProductsByCategory(CategoryEntity category) =>
      localProductsDataProvider.getProductsByCategory(category);

  @override
  Future<void> writeProducts() => localProductsDataProvider.writeProducts();
}
