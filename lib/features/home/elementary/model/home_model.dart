part of '../../home.dart';

class HomeModel extends ElementaryModel {
  final StocksRepository stocksRepository;
  final ProductsRepository productsRepository;

  HomeModel({
    super.errorHandler,
    required this.stocksRepository,
    required this.productsRepository,
  });

  List<StockEntity> get stocks => _stocks;
  List<StockEntity> _stocks = [];

  List<ProductEntity> get products => _products;
  List<ProductEntity> _products = [];

  List<CategoryEntity> get categories => CategoryEntity.values;

  Future<void> fetchData() async {
    _stocks = await stocksRepository.getAllStocks();
    _products = await productsRepository.getAllProducts();
  }
}
