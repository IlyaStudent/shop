part of '../../home.dart';

class CustomErrorHandler implements ErrorHandler {
  @override
  void handleError(Object error, {StackTrace? stackTrace}) {
    log('$error');
  }
}

HomeWidgetModel widgetModelFactory(BuildContext context) {
  final errorHandler = CustomErrorHandler();

  return HomeWidgetModel(
    HomeModel(
      errorHandler: errorHandler,
      stocksRepository: instance(),
      productsRepository: instance(),
    ),
  );
}

class HomeState {
  final List<StockEntity> stocks;
  final List<CategoryEntity> categories;
  final List<ProductEntity> products;
  HomeState({
    required this.stocks,
    required this.categories,
    required this.products,
  });
}

class HomeWidgetModel extends WidgetModel<HomeElementaryWidget, HomeModel>
    implements IHomeWidgetModel {
  HomeWidgetModel(super.model);

  late EntityStateNotifier<HomeState> _valueController;

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    _valueController = EntityStateNotifier<HomeState>();
    fetchData();
  }

  @override
  void dispose() {
    _valueController.dispose();

    super.dispose();
  }

  @override
  Future<void> fetchData() async {
    await model.fetchData();
    _valueController.content(
      HomeState(
        stocks: model.stocks,
        categories: model.categories,
        products: model.products,
      ),
    );
  }

  @override
  ValueListenable<EntityState<HomeState>> get valueState => _valueController;
}

abstract interface class IHomeWidgetModel implements IWidgetModel {
  ValueListenable<EntityState<HomeState>> get valueState;
  Future<void> fetchData();
}
