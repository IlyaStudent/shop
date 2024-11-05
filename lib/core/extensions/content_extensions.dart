part of '../core.dart';

extension ContentExtensions on BuildContext {
  TabsRouter get autoTabsRouter => AutoTabsRouter.of(this);
  double get deviceWidth => MediaQuery.sizeOf(this).width;
}
