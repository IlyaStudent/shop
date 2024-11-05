library data;

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shop/core/core.dart';

// models
part 'entities/category_entity.dart';
part 'entities/product_entity.dart';
part 'entities/stock_entity.dart';

// data provider - local
part 'data_provider/local/local_products_data_provider.dart';
part 'data_provider/local/local_products_data_provider_impl.dart';
part 'data_provider/local/local_stocks_data_provider.dart';
part 'data_provider/local/local_stocks_data_provider_impl.dart';

// generated
part 'data.g.dart';
