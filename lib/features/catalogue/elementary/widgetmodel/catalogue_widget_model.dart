part of '../../catalogue.dart';

class CustomErrorHandler implements ErrorHandler {
  @override
  void handleError(Object error, {StackTrace? stackTrace}) {
    log('$error');
  }
}

CatalogueWidgetModel widgetModelFactory(BuildContext context) {
  final errorHandler = CustomErrorHandler();
  return CatalogueWidgetModel(
    CatalogueModel(
      errorHandler: errorHandler,
      productsRepository: instance(),
    ),
  );
}

class CatalogueState {
  final List<CategoryEntity> categories;
  final List<ProductEntity> products;
  final CategoryEntity? category;
  final Map<ProductEntity, int> shoppingCart;
  final double cartSum;
  CatalogueState({
    required this.categories,
    required this.products,
    required this.shoppingCart,
    required this.cartSum,
    this.category,
  });
}

class CatalogueWidgetModel
    extends WidgetModel<CatalogueElementaryWidget, CatalogueModel>
    implements ICatalogueWidgetModel {
  CatalogueWidgetModel(super.model);

  late EntityStateNotifier<CatalogueState> _valueController;

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    _valueController = EntityStateNotifier<CatalogueState>();
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
      CatalogueState(
        categories: model.categories,
        products: model.products,
        shoppingCart: model.shoppingCart,
        cartSum: model.cartSum,
      ),
    );
  }

  @override
  Future<void> setActiveFilterCategory(CategoryEntity category) async {
    final CategoryEntity? activeCategory =
        category != model.activeFilterCategory ? category : null;

    if (activeCategory != null) {
      await model.fetchProductsByFilter(activeCategory);
    } else {
      await model.fetchData();
    }
    _valueController.content(
      CatalogueState(
        categories: model.categories,
        products: model.products,
        category: activeCategory,
        shoppingCart: model.shoppingCart,
        cartSum: model.cartSum,
      ),
    );
  }

  @override
  void addToCart(ProductEntity product) {
    model.addToCart(product);
    log("${model.cartSum}");
    _valueController.content(
      CatalogueState(
        categories: model.categories,
        products: model.products,
        category: model.activeFilterCategory,
        shoppingCart: model.shoppingCart,
        cartSum: model.cartSum,
      ),
    );
  }

  @override
  void removeFromCart(ProductEntity product) {
    model.removeFromCart(product);
    log("${model.cartSum}");
    _valueController.content(
      CatalogueState(
        categories: model.categories,
        products: model.products,
        category: model.activeFilterCategory,
        shoppingCart: model.shoppingCart,
        cartSum: model.cartSum,
      ),
    );
  }

  @override
  ValueListenable<EntityState<CatalogueState>> get valueState =>
      _valueController;
}

abstract interface class ICatalogueWidgetModel implements IWidgetModel {
  ValueListenable<EntityState<CatalogueState>> get valueState;
  Future<void> fetchData();
  Future<void> setActiveFilterCategory(CategoryEntity category);
  void addToCart(ProductEntity product);
  void removeFromCart(ProductEntity product);
}
