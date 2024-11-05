part of '../domain.dart';

class StocksRepositoryImpl implements StocksRepository {
  final LocalStocksDataProvider localStocksDataProvider;

  StocksRepositoryImpl({required this.localStocksDataProvider});

  @override
  Future<List<StockEntity>> getAllStocks() =>
      localStocksDataProvider.getAllStocks();

  @override
  Future<void> writeAllStocks() => localStocksDataProvider.writeAllStocks();
}
