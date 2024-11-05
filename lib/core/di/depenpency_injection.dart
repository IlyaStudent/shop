part of '../core.dart';

final instance = GetIt.instance;

Future<void> init() async {
  final hive = Hive;
  await hive.initFlutter();
  hive
    ..registerAdapter(
      StockEntityAdapter(),
    )
    ..registerAdapter(
      CategoryEntityAdapter(),
    )
    ..registerAdapter(
      ProductEntityAdapter(),
    );
  instance

        // data providers
        ..registerLazySingleton<LocalProductsDataProvider>(
          () => LocalProductsDataProviderImpl(
            hive: instance(),
          ),
        )
        ..registerLazySingleton<LocalStocksDataProvider>(
          () => LocalStocksDataProviderImpl(
            hive: instance(),
          ),
        )

        // repositories
        ..registerLazySingleton<ProductsRepository>(
          () => ProductsRepositoryImpl(
            localProductsDataProvider: instance(),
          ),
        )
        ..registerLazySingleton<StocksRepository>(
          () => StocksRepositoryImpl(
            localStocksDataProvider: instance(),
          ),
        )
        // external
        ..registerLazySingleton(
          () => hive,
        )
      //
      ;
}
