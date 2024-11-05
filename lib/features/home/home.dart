library home;

import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shop/core/core.dart';
import 'package:shop/core/root/navigation/app_router.dart';
import 'package:shop/data/data.dart';
import 'package:elementary/elementary.dart';

import 'package:shop/domain/domain.dart';
import 'package:shop/features/catalogue/catalogue.dart';

// pages
part 'pages/home_page.dart';

// widgets
part 'widgets/title_widget.dart';
part 'widgets/stocks_widget.dart';
part 'widgets/stock_widget.dart';
part 'widgets/category_widget.dart';
part 'widgets/categories_widgets.dart';
part 'widgets/show_more_widget.dart';

// elemenatary
part 'elementary/model/home_model.dart';
part 'elementary/widget/home_elementary_widget.dart';
part 'elementary/widgetmodel/home_widget_model.dart';
