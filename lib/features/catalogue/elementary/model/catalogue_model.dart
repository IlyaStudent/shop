part of '../../catalogue.dart';

class CatalogueModel extends ElementaryModel {
  final ProductsRepository productsRepository;

  CatalogueModel({
    super.errorHandler,
    required this.productsRepository,
  });

  List<ProductEntity> get products => _products;
  List<ProductEntity> _products = [];

  CategoryEntity? get activeFilterCategory => _activeFilterCategory;
  CategoryEntity? _activeFilterCategory;

  List<CategoryEntity> get categories => CategoryEntity.values;

  Map<ProductEntity, int> get shoppingCart => _shoppingCart;
  final Map<ProductEntity, int> _shoppingCart = {};

  double get cartSum {
    double total = 0;
    shoppingCart.forEach(
      (product, quantity) {
        total += product.price * quantity;
      },
    );
    return total;
  }

  Future<void> fetchData() async {
    _products = await productsRepository.getAllProducts();
  }

  void addToCart(ProductEntity product) =>
      _shoppingCart[product] = (_shoppingCart[product] ?? 0) + 1;

  void removeFromCart(ProductEntity product) {
    if (_shoppingCart.containsKey(product)) {
      _shoppingCart[product] = (_shoppingCart[product] ?? 0) - 1;
      if (_shoppingCart[product] == 0) {
        _shoppingCart.remove(product);
      }
    }
  }

  Future<void> fetchProductsByFilter(CategoryEntity category) async {
    _activeFilterCategory = category;
    _products = await productsRepository.getProductsByCategory(category);
  }
}
