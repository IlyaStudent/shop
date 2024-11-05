library main_library;

import 'package:flutter/material.dart';
import 'package:shop/core/core.dart';
import 'package:shop/core/root/navigation/app_router.dart';
import 'package:shop/domain/domain.dart';

part 'core/root/shop_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();

  await instance<StocksRepository>().writeAllStocks();

  await instance<ProductsRepository>().writeProducts();

  runApp(const MyApp());
}
