part of '../domain.dart';

abstract class StocksRepository {
  Future<void> writeAllStocks();

  Future<List<StockEntity>> getAllStocks();
}
