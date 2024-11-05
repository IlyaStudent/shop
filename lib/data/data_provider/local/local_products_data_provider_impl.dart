part of '../../data.dart';

class LocalProductsDataProviderImpl implements LocalProductsDataProvider {
  final HiveInterface hive;

  LocalProductsDataProviderImpl({
    required this.hive,
  });

  Future<Box<ProductEntity>> get _productBox async =>
      await hive.openBox<ProductEntity>(StringConsts.productBox);

  @override
  Future<List<ProductEntity>> getAllProducts() async {
    final box = await _productBox;
    return box.values.toList();
  }

  @override
  Future<List<ProductEntity>> getProductsByCategory(
      CategoryEntity category) async {
    final box = await _productBox;
    return box.values
        .where((ProductEntity product) => product.category == category)
        .toList();
  }

  @override
  Future<void> writeProducts() async {
    final products = [
      ProductEntity(
        name: LocalizationCosts.pineapples,
        category: CategoryEntity.fruis,
        measurementUnit: LocalizationCosts.kilograms,
        imagePath: StringConsts.pineappleImage,
        price: 1234,
        oldPrice: 2356,
        popularity: 1,
        isFavourite: false,
      ),
      ProductEntity(
        name: LocalizationCosts.apples,
        category: CategoryEntity.fruis,
        measurementUnit: LocalizationCosts.kilograms,
        imagePath: StringConsts.appleImage,
        price: 1234,
        oldPrice: 2356,
        popularity: 1,
        isFavourite: false,
      ),
      ProductEntity(
        name: LocalizationCosts.bananas,
        category: CategoryEntity.fruis,
        measurementUnit: LocalizationCosts.kilograms,
        imagePath: StringConsts.bananaImage,
        price: 1234,
        oldPrice: 2356,
        popularity: 3,
        isFavourite: true,
      ),
    ];
    final box = await _productBox;
    if (box.isEmpty) {
      await box.addAll(products);
    }
  }
}
