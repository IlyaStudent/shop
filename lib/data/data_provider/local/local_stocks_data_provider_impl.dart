part of '../../data.dart';

class LocalStocksDataProviderImpl implements LocalStocksDataProvider {
  final HiveInterface hive;

  LocalStocksDataProviderImpl({required this.hive});

  Future<Box<StockEntity>> get _stockBox async =>
      await hive.openBox<StockEntity>(StringConsts.stockBox);

  @override
  Future<List<StockEntity>> getAllStocks() async {
    final box = await _stockBox;
    return box.values.toList();
  }

  @override
  Future<void> writeAllStocks() async {
    final stocks = [
      StockEntity(
        beginDate: DateTime(2024, 2, 18),
        endDate: DateTime(2024, 3, 16),
        title: LocalizationCosts.moreProfitable,
        imagePath: StringConsts.stockImage,
      ),
      StockEntity(
        beginDate: DateTime(2024, 2, 18),
        endDate: DateTime(2024, 3, 16),
        title: LocalizationCosts.moreProfitable,
        imagePath: StringConsts.stockImage,
      ),
    ];

    final box = await _stockBox;
    if (box.isEmpty) {
      await box.addAll(stocks);
    }
  }
}
