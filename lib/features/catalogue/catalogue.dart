library catalogue;

import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shop/core/core.dart';
import 'package:shop/data/data.dart';
import 'package:shop/domain/domain.dart';

// pages
part 'pages/catalogue_page.dart';

// widgets
part 'widgets/product_widget.dart';
part 'widgets/popularity_widget.dart';
part 'widgets/products_widget.dart';
part 'widgets/product_info_widget.dart';
part 'widgets/categories_filter_widget.dart';
part 'widgets/category_filter_widget.dart';
part 'widgets/shopping_cart_widget.dart';

// elementary
part 'elementary/model/catalogue_model.dart';
part 'elementary/widget/catalogue_elementary_widget.dart';
part 'elementary/widgetmodel/catalogue_widget_model.dart';
