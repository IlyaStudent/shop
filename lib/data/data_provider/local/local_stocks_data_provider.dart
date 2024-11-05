part of '../../data.dart';

abstract class LocalStocksDataProvider {
  Future<void> writeAllStocks();

  Future<List<StockEntity>> getAllStocks();
}
