import 'package:auto_route/auto_route.dart';
import 'package:shop/features/catalogue/catalogue.dart';
import 'package:shop/features/home/home.dart';
import 'package:shop/features/navigation/navigation.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: NavBarRoute.page,
          initial: true,
          children: [
            AutoRoute(
              page: HomeRoute.page,
            ),
            AutoRoute(
              page: CatalogueRoute.page,
            ),
          ],
        )
      ];
}
